clear; % Remove all variables from the workspace

% Sampling frequency
FS = 8000; % Sampling frequency in Hz

% Generate notes
a = sin(2*pi*440*(0:0.000125:0.2));
b = sin(2*pi*493.88*(0:0.000125:0.7));
c = sin(2*pi*523.24*(0:0.000125:0.7));
chalfnote = sin(2*pi*523.24*(0:0.000125:1.4));
cs = sin(2*pi*554.37*(0:0.000125:0.2));
d = sin(2*pi*587.33*(0:0.000125:0.2));
e = sin(2*pi*659.26*(0:0.000125:0.7));
g = sin(2*pi*783.99*(0:0.000125:0.7));
highb = sin(2*pi*987.767*(0:0.000125:0.7));
fs = sin(2*pi*739.988*(0:0.000125:0.7));
lowfs = sin(2*pi*369.994*(0:0.000125:0.7));
lowfshalfnote = sin(2*pi*369.994*(0:0.000125:1.4));
lowg = sin(2*pi*391.995*(0:0.000125:0.7));
lowghalfnote = sin(2*pi*391.995*(0:0.000125:1.4));
lowe = sin(2*pi*329.628*(0:0.000125:0.7));
lowewholenote = sin(2*pi*329.628*(0:0.000125:2.8));
lowc = sin(2*pi*261.626*(0:0.000125:0.7));
lowchalfnote = sin(2*pi*261.626*(0:0.000125:1.4));
lowb = sin(2*pi*246.942*(0:0.000125:0.7));
lowdwholenote = sin(2*pi*293.665*(0:0.000125:2.8));
lowdhalfnote = sin(2*pi*293.665*(0:0.000125:1.4));
lowcsharphalfnote = sin(2*pi*277.183*(0:0.000125:1.4));
lowdsharphalfnote = sin(2*pi*311.127*(0:0.000125:1.4));

% Create song segments
melody = [c, g, highb, fs, c, g, highb, fs];
shortnotes = [lowghalfnote, lowfshalfnote, lowe, b, lowc, lowb, lowe];
longnotes = [lowewholenote, lowdwholenote, lowewholenote];

% Make all parts the same length by zero-padding
maxLength = max([length(melody), length(shortnotes), length(longnotes)]);
melody = [melody, zeros(1, maxLength - length(melody))];
shortnotes = [shortnotes, zeros(1, maxLength - length(shortnotes))];
longnotes = [longnotes, zeros(1, maxLength - length(longnotes))];

% Combine parts by adding them together
song = melody + shortnotes + longnotes;

% Normalize song to avoid clipping
song = song / max(abs(song));

% Write the final music to a .wav file
audiowrite('song.wav', song, FS);

% Playback
audio = audioplayer(song, FS);
play(audio);
