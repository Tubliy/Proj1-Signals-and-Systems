% Load audio files
[y_clean, Fs_clean] = audioread('song.wav'); % Reference clean audio (optional)
[y_noisy, Fs_noisy] = audioread('noisySong.wav'); % Noisy audio to be cleaned

% Ensure both audio files have the same sampling rate
if Fs_clean ~= Fs_noisy
    error('Sampling rates of the clean and noisy audio files do not match.');
end

% Normalize the noisy audio
y_noisy = y_noisy / max(abs(y_noisy)); % Scale the signal to the range [-1, 1]

% Validate and set the cutoff frequency
nyquist_frequency = Fs_noisy / 2;
filter_cutoff = 1000; % Example cutoff frequency in Hz

if filter_cutoff >= nyquist_frequency
    error('Cutoff frequency must be less than the Nyquist frequency (%f Hz).', nyquist_frequency);
end

% Design a low-pass filter
filter_order = 12; % Order of the filter
lpFilter = designfilt('lowpassiir', 'FilterOrder', filter_order, ...
                      'HalfPowerFrequency', filter_cutoff, ...
                      'SampleRate', Fs_noisy);

% Apply the low-pass filter to the normalized noisy audio
y_processed = filtfilt(lpFilter, y_noisy); % filtfilt applies zero-phase filtering to avoid phase distortion

% Normalize the filtered audio again to avoid clipping
y_processed = y_processed / max(abs(y_processed));

% Write the final processed audio to a new file
output_filename = 'cleanSong.wav'; % Name for the output file
audiowrite(output_filename, y_processed, Fs_noisy);

% Display a message indicating the completion of the process
disp('Processed and normalized audio file saved as cleanSong.wav');
