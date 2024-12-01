% Load audio files
[music, Fs_m] = audioread('song.wav');
[disturb, Fs_d] = audioread('audiodisturb.wav');

% Convert disturbance to mono if necessary
if size(disturb, 2) > 1
    disturb = mean(disturb, 2);
end

% Resample the disturbance signal to match the song's sampling rate
if Fs_d ~= Fs_m
    try
        % Use resample if Signal Processing Toolbox is available
        disturb = resample(disturb, Fs_m, Fs_d);
    catch
        % Alternative resampling using interp1
        t_original = (0:length(disturb)-1) / Fs_d; % Original time vector
        t_target = (0:1/Fs_m:(length(disturb)-1)/Fs_d)'; % Target time vector
        disturb = interp1(t_original, disturb, t_target, 'linear'); % Linear interpolation
    end
end

% Specify the starting time for disturbance in seconds
startTimeofDist = 3;

% Calculate the starting index for adding the disturbance
FS_Index = round(startTimeofDist * Fs_m);

% Ensure the disturbance signal fits within the music signal length
if FS_Index + length(disturb) > length(music)
    disturb = disturb(1:length(music) - FS_Index); % Trim disturbance
elseif FS_Index + length(disturb) < length(music)
    disturb = [disturb; zeros(length(music) - (FS_Index + length(disturb)), 1)]; % Pad disturbance
end

% Match channels if music is stereo
if size(music, 2) > 1 && size(disturb, 2) == 1
    disturb = [disturb, disturb]; % Convert mono to stereo
end

% Add disturbance to the music
noisySong = music;
noisySong(FS_Index:FS_Index + length(disturb) - 1, :) = ...
    noisySong(FS_Index:FS_Index + length(disturb) - 1, :) + disturb;

% Normalize the combined audio to prevent clipping
noisySong = noisySong / max(abs(noisySong), [], 'all');

% Save the combined audio as a new file
audiowrite('noisySong.wav', noisySong, Fs_m);

disp('Audio processing completed and saved as noisySong.wav');
