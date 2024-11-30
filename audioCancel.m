% Load audio files
[y_clean, Fs_clean] = audioread('song.wav'); % Reference clean audio
[y_noisy, Fs_noisy] = audioread('noisySong.wav'); % Noisy audio to be cleaned

% Initialize processed audio as the noisy audio
y_processed = y_noisy;

% Set a threshold for residual noise
threshold = 0.001; 

% Initial residual to enter the loop
residual = inf;

% Start the feedback loop
while residual > threshold
    % Perform FFT  
    Y_clean = fft(y_clean);
    Y_processed = fft(y_processed);

    % Calculate Transfer Function
    H = Y_clean ./ Y_processed;

    % Apply Noise Cancellation
    Y_processed = H .* fft(y_noisy);

    % Inverse FFT
    y_processed = ifft(Y_processed);

    % Calculate residual noise
    residual = norm(y_processed - y_clean) / norm(y_clean); % Using norm as a measure of difference
end

% Play the final processed audio
%sound(y_processed, Fs_noisy);

% Write the final processed audio to a new file
output_filename = 'cleanSong.wav'; % Name for the output file
audiowrite(output_filename, y_processed, Fs_noisy);

% Display a message indicating the completion of the process
disp('Processed audio file with feedback until clean saved as cleanSong.wav');