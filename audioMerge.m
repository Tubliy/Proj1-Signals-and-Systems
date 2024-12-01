% Load audio files
[song, Fs_s] = audioread('song.wav');
[noise, Fs_n] = audioread('audionoise.wav');

% Convert noise to mono if necessary
if size(noise, 2) > 1
    noise = mean(noise, 2);
end

% Resample the disturbance signal to match the song's sampling rate
if Fs_n ~= Fs_s
    try
        % Use resample if Signal Processing Toolbox is available
        noise = resample(noise, Fs_s, Fs_n);
    catch
        % Alternative resampling using interp1
        disp("Signal Processing Toolbox not installed");
        t_original = (0:length(noise)-1) / Fs_n; % Original time vector
        t_target = (0:1/Fs_s:(length(noise)-1)/Fs_n)'; % Target time vector
        noise = interp1(t_original, noise, t_target, 'linear'); % Linear interpolation
    end
end

% Specify the starting time for noise in seconds
startTimeofNoise = 10;

% Calculate the starting index for adding the disturbance
FS_Index = round(startTimeofNoise * Fs_s);

% Ensure the disturbance signal fits within the music signal length
if FS_Index + length(noise) > length(song)
    noise = noise(1:length(song) - FS_Index); % Trim noise
elseif FS_Index + length(noise) < length(song)
    noise = [noise; zeros(length(song) - (FS_Index + length(noise)), 1)]; % Pad noise
end

% Match channels if music is stereo
if size(song, 2) > 1 && size(noise, 2) == 1
    noise = [noise, noise]; % Convert mono to stereo
end

% Add noise to the music
noisySong = song;
noisySong(FS_Index:FS_Index + length(noise) - 1, :) = ...
    noisySong(FS_Index:FS_Index + length(noise) - 1, :) + noise;

% Normalize the combined audio to prevent clipping
noisySong = noisySong / max(abs(noisySong), [], 'all');

% Save the combined audio as a new file
audiowrite('noisySong.wav', noisySong, Fs_s);

% Displaying Sampling rates for Procedure
disp('Sampling rate of Fs_s');
disp(Fs_s);
disp('Sampling rate of Fs_n')
disp(Fs_n);

disp('Audio processing completed and saved as noisySong.wav');
