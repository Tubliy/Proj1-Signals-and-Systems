
  _____   ______            _____    __  __  ______ 
 |  __ \ |  ____|    /\    |  __ \  |  \/  ||  ____|
 | |__) || |__      /  \   | |  | | | \  / || |__   
 |  _  / |  __|    / /\ \  | |  | | | |\/| ||  __|  
 | | \ \ | |____  / ____ \ | |__| | | |  | || |____ 
 |_|  \_\|______|/_/    \_\|_____/  |_|  |_||______|
                                                    
                                                    

  _              _____ _          _     _ _                 _____      _                              _  __          __                      _  __    _ _     
 | |            / ____| |        (_)   (_| |               / ____|    | |                            | | \ \        / /                     | |/ /   | | |    
 | |__  _   _  | |    | |__  _ __ _ ___ _| |_ __ _ _ __   | |     __ _| __   _____     __ _ _ __   __| |  \ \  /\  / __ _ _   _ _ __   ___  | ' / ___| | |___ 
 | '_ \| | | | | |    | '_ \| '__| / __| | __/ _` | '_ \  | |    / _` | \ \ / / _ \   / _` | '_ \ / _` |   \ \/  \/ / _` | | | | '_ \ / _ \ |  < / _ | | / __|
 | |_) | |_| | | |____| | | | |  | \__ | | || (_| | | | | | |___| (_| | |\ V | (_) | | (_| | | | | (_| |    \  /\  | (_| | |_| | | | |  __/ | . |  __| | \__ \
 |_.__/ \__, |  \_____|_| |_|_|  |_|___|_|\__\__,_|_| |_|  \_____\__,_|_| \_/ \___/   \__,_|_| |_|\__,_|     \/  \/ \__,_|\__, |_| |_|\___| |_|\_\___|_|_|___/
         __/ |                                                                                                             __/ |                              
        |___/                                                                                                             |___/                               


The Matlab files provided within this folder will allow you to implement, noise cancellation using a low bypass filter.
Two signals are merged song.wav and audionoise.wav into one noisySong.wav. Then audioCancel.m is able to cancel out the noise added.
The following steps will provide you with a detailed guide on how to run everything listed in this zip.


Step 1: File Preparation
    Make sure that you have all the files provided in this zip. These files include "audioCancel.m, audioMerge.m,
LavendarTown.m,timeandfreqPlot.m" These are crucial files that you'll need to eventually get the audios provided as well.
If you don't have any .wav files in this folder do not worry! The code will generate these files, and if you do have them
they will just be overwritten.

Step 2: Installing Matlab
    Matlab is a programming language that is often used in engineering or mathematics. Their custom IDE can be downloaded at
Mathworks.com. Follow the instructions that are given to you on the website to create an account and download the needed software.
After Matlab is installed, you may now open it.

Step 3: Opening the folder with all the files
    You are able to open the files one by one with the open button top left. However, it's much easier to get the directory
of your folder and have everything listed at once. So go to whatever you use to open your files (Ex. Windows file explorer)
right click the folder inside the zipped one and choose "Copy path." You then go back to Matlab and paste it into the 
long rectangular box that says "C://Users//..". 

Step 4: Running any file
    This project was done in a very specific order. So first you'll have to run LavendarTown.m, then audioMerge.m,
audioCancel.m, and finally timeandfreqPlot.m. This will give you the full experience, however to run any file you must go
to the editor tab above. You should then see a green play button on the right hand side. Check the command window to see that 
it's working!

    How it works-

LavendarTown.m outputs a song.wav file, this is then used in audioMerge.m with another sound of a guitar to create
a noisySong.wav. This is the previous song but with a white noise added. To get rid of this noise you open audioCancel.m 
this should cancel out the guitar and leave you with what you heard in the begging.

 Finally, timeandfreqPlot.m allows you to visualize what just happened with the sine wave's of the signals in time, frequency, and '
with a spectrogram.

