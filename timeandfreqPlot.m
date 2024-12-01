
% Create a new figure
figure;

% Plot for 'song.wav'
[y, Fs] = audioread('song.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of song.wav
subplot(4, 3, 1);
plot(t, y);
title('song.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of song.wav
subplot(4, 3, 2);
plot(f, abs(Y));
title('song.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Spectrogram of song.wav
subplot(4, 3, 3);
spectrogram(y, 256, [], [], Fs, 'yaxis');
title('song.wav - Spectrogram');
colorbar;

% Plot for 'noisySong.wav'
[y, Fs] = audioread('noisySong.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of noisySong.wav
subplot(4, 3, 4);
plot(t, y);
title('noisySong.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of noisySong.wav
subplot(4, 3, 5);
plot(f, abs(Y));
title('noisySong.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Spectrogram of noisySong.wav
subplot(4, 3, 6);
spectrogram(y, 256, [], [], Fs, 'yaxis');
title('noisySong.wav - Spectrogram');
colorbar;

% Plot for 'cleanSong.wav'
[y, Fs] = audioread('cleanSong.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of cleanSong.wav
subplot(4, 3, 7);
plot(t, y);
title('cleanSong.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of cleanSong.wav
subplot(4, 3, 8);
plot(f, abs(Y));
title('cleanSong.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Spectrogram of cleanSong.wav
subplot(4, 3, 9);
spectrogram(y, 256, [], [], Fs, 'yaxis');
title('cleanSong.wav - Spectrogram');
colorbar;

% Plot for 'audiodisturb.wav'
[y, Fs] = audioread('audiodisturb.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of audiodisturb.wav
subplot(4, 3, 10);
plot(t, y);
title('audiodisturb.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of audiodisturb.wav
subplot(4, 3, 11);
plot(f, abs(Y));
title('audiodisturb.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Add a global title for the entire figure
sgtitle('Audio Signal Analysis: Time, Frequency, and Spectrogram Domains');


