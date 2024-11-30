%Music.m %This is an example of a music piece generated using the tutorial
%above. Music.m is the file name
clear; % remove all variables from current work space
% generate 1 s of music notes a, b, c#, d e f#, sampled at 8KHz.
FS=8000; % sampling frequency
a=sin(2*pi*440*(0:0.000125:0.2));
b=sin(2*pi*493.88*(0:0.000125:0.7));
c=sin(2*pi*523.24*(0:0.000125:0.7));
chalfnote=sin(2*pi*523.24*(0:0.000125:1.4));
cs=sin(2*pi*554.37*(0:0.000125:0.2));
d=sin(2*pi*587.33*(0:0.000125:0.2));
e=sin(2*pi*659.26*(0:0.000125:0.7));
g=sin(2*pi*783.99*(0:0.000125:0.7));
highb=sin(2*pi*987.767*(0:0.000125:0.7));
fs=sin(2*pi*739.988*(0:0.000125:0.7));
lowfs=sin(2*pi*369.994*(0:0.000125:0.7));
lowfshalfnote=sin(2*pi*369.994*(0:0.000125:1.4));
lowg=sin(2*pi*391.995*(0:0.000125:0.7));
lowghalfnote=sin(2*pi*391.995*(0:0.000125:1.4));
lowghalfnote=sin(2*pi*391.995*(0:0.000125:1.4));
lowe=sin(2*pi*329.628*(0:0.000125:0.7));
lowewholenote=sin(2*pi*329.628*(0:0.000125:2.8));
lowcspluse=sin(2*pi*468.219*(0:0.000125:0.7));
lowc=sin(2*pi*261.626*(0:0.000125:0.7));
lowchalfnote=sin(2*pi*261.626*(0:0.000125:1.4));
lowb=sin(2*pi*246.942*(0:0.000125:0.7));
lowdwholenote=sin(2*pi*293.665*(0:0.000125:2.8));
lowdhalfnote=sin(2*pi*293.665*(0:0.000125:1.4));
lowcsharphalfnote=sin(2*pi*277.183*(0:0.000125:1.4));
lowdsharphalfnote=sin(2*pi*311.127*(0:0.000125:1.4));

%generate 3 lines of music by composing the notes together
line1=[a,a,e,e,fs,fs,e,e];
line2=[d,d,cs,cs,b,b,a,a];
line3=[e,e,d,d,cs,cs,b,b];
melody=[c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs,c,g,highb,fs];
shortnotes=[lowghalfnote, lowghalfnote, lowfshalfnote, lowfshalfnote,lowg,lowfs,lowe,b, lowe, lowc, lowb,lowe, lowghalfnote, lowghalfnote, lowfshalfnote, lowfshalfnote, b, lowg, lowfs, b, lowe, lowc, lowb, lowe, lowghalfnote, lowghalfnote, lowfshalfnote, lowfshalfnote, lowg, lowfs, lowe, b, lowe, lowc, lowb, lowe, lowghalfnote, lowghalfnote, lowfshalfnote, lowfshalfnote, b, lowg, lowfs, b];
longnotes=[c,g,highb,fs, lowewholenote, lowdwholenote, lowewholenote, lowcsharphalfnote, lowdsharphalfnote, lowewholenote, lowdwholenote, lowdhalfnote, lowdhalfnote, chalfnote, chalfnote, lowewholenote, lowdwholenote, lowewholenote, lowchalfnote, lowchalfnote, lowewholenote, lowewholenote, lowdhalfnote, lowdhalfnote, lowchalfnote, lowchalfnote, lowewholenote];
song=[melody]; % generate the song
song1=[shortnotes];
song2=[longnotes];
audiowrite('song.wav', song, FS); % output the final music notes as a wave form
%sound(song, FS), 
%pause(5)
%sound(song1, FS)
audio = audioplayer(song, FS)
audio2=audioplayer(song1, FS)
audio3=audioplayer(song2, FS)
play(audio)
pause(8.8)
play(audio3)
pause(2.4)
play(audio2)