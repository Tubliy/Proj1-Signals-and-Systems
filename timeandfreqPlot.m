
% Loading the audio file 
[y, Fs] = audioread('song.wav');

% Calculate the duration of the audio signal in seconds
duration = length(y) / Fs;

% Create a time vector based on the audio duration
t = linspace(0, duration, length(y));

% Plot the time-domain signal
subplot(2,1,1);
plot(t, y);
title('Time Domain Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute the FFT (Fast Fourier Transform) of the audio signal
Y = fft(y);

% Calculate the frequency resolution
freq_resolution = Fs / length(Y);

% Create a frequency vector for the FFT plot
f = linspace(0, Fs - freq_resolution, length(Y));

% Plot the single-sided amplitude spectrum of the audio signal
subplot(2,1,2);
plot(f, abs(Y));
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Display only positive frequencies in the plot
xlim([0, Fs/2]);

% Show the plots
sgtitle('Audio Signal in Time and Frequency Domains');
%%
% Loading the audio file 
[y, Fs] = audioread('noisySong.wav');

% Calculate the duration of the audio signal in seconds
duration = length(y) / Fs;

% Create a time vector based on the audio duration
t = linspace(0, duration, length(y));

% Plot the time-domain signal
subplot(2,1,1);
plot(t, y);
title('Time Domain Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute the FFT (Fast Fourier Transform) of the audio signal
Y = fft(y);

% Calculate the frequency resolution
freq_resolution = Fs / length(Y);

% Create a frequency vector for the FFT plot
f = linspace(0, Fs - freq_resolution, length(Y));

% Plot the single-sided amplitude spectrum of the audio signal
subplot(2,1,2);
plot(f, abs(Y));
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Display only positive frequencies in the plot
xlim([0, Fs/2]);

% Show the plots
sgtitle('Audio Signal in Time and Frequency Domains');

%%
% Loading the audio file 
[y, Fs] = audioread('cleanSong.wav');

% Calculate the duration of the audio signal in seconds
duration = length(y) / Fs;

% Create a time vector based on the audio duration
t = linspace(0, duration, length(y));

% Plot the time-domain signal
subplot(2,1,1);
plot(t, y);
title('Time Domain Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute the FFT (Fast Fourier Transform) of the audio signal
Y = fft(y);

% Calculate the frequency resolution
freq_resolution = Fs / length(Y);

% Create a frequency vector for the FFT plot
f = linspace(0, Fs - freq_resolution, length(Y));

% Plot the single-sided amplitude spectrum of the audio signal
subplot(2,1,2);
plot(f, abs(Y));
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Display only positive frequencies in the plot
xlim([0, Fs/2]);

% Show the plots
sgtitle('Audio Signal in Time and Frequency Domains');



