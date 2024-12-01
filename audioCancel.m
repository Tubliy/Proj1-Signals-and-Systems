% Load audio files
[y_clean, Fs_clean] = audioread('song.wav'); % Reference clean audio (for comparison, if needed)
[y_noisy, Fs_noisy] = audioread('noisySong.wav'); % Noisy audio to be cleaned

% Ensure both audio files have the same sampling rate
if Fs_clean ~= Fs_noisy
    error('Sampling rates of the clean and noisy audio files do not match.');
end

% Validate and set the cutoff frequency
nyquist_frequency = Fs_noisy / 2;
filter_cutoff = 1000; % Example cutoff frequency in Hz

if filter_cutoff >= nyquist_frequency
    error('Cutoff frequency must be less than the Nyquist frequency (%f Hz).', nyquist_frequency);
end

% Design a low-pass filter
filter_order = 8; % Order of the filter (higher orders are steeper but may cause more delay)
lpFilter = designfilt('lowpassiir', 'FilterOrder', filter_order, ...
                      'HalfPowerFrequency', filter_cutoff, ...
                      'SampleRate', Fs_noisy);

% Apply the low-pass filter to the noisy audio
y_processed = filtfilt(lpFilter, y_noisy); % filtfilt applies zero-phase filtering to avoid phase distortion

% Write the final processed audio to a new file
output_filename = 'cleanSong.wav'; % Name for the output file
audiowrite(output_filename, y_processed, Fs_noisy);

% Display a message indicating the completion of the process
disp('Processed audio file with low-pass filter saved as cleanSong.wav');
