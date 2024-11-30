
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
subplot(4, 2, 1);
plot(t, y);
title('song.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of song.wav
subplot(4, 2, 2);
plot(f, abs(Y));
title('song.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Plot for 'noisySong.wav'
[y, Fs] = audioread('noisySong.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of noisySong.wav
subplot(4, 2, 3);
plot(t, y);
title('noisySong.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of noisySong.wav
subplot(4, 2, 4);
plot(f, abs(Y));
title('noisySong.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Plot for 'cleanSong.wav'
[y, Fs] = audioread('cleanSong.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of cleanSong.wav
subplot(4, 2, 5);
plot(t, y);
title('cleanSong.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of cleanSong.wav
subplot(4, 2, 6);
plot(f, abs(Y));
title('cleanSong.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

[y, Fs] = audioread('audiodisturb.wav');
duration = length(y) / Fs;
t = linspace(0, duration, length(y));
Y = fft(y);
freq_resolution = Fs / length(Y);
f = linspace(0, Fs - freq_resolution, length(Y));

% Time domain of cleanSong.wav
subplot(4, 2, 7);
plot(t, y);
title('audiodistrub.wav - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain of cleanSong.wav
subplot(4, 2, 8);
plot(f, abs(Y));
title('audiodistrub.wav - Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0, Fs/2]);

% Add a global title for the entire figure
sgtitle('Audio Signal Analysis: Time and Frequency Domains');

