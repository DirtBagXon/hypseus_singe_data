-------------- ALG Collection for SINGE -------------------


THIS SOFTWARE IS PROVIDED "AS-IS" WITHOUT ANY EXPRESSED 
OR IMPLIED WARRANTY. IN NO EVENT WILL THE AUTHOR BE HELD LIABLE FOR 
ANY DAMAGES ARISING FROM THE USE OF THIS SOFTWARE. 

ALG Collection for SINGE was programmed by RDG2010 and is 
released under the GNU GENERAL PUBLIC LICENSE.
Read COPYING for more info.

SINGE SDK is the property of Scott Duensing and Jaeger Technologies.
Daphne is the property of Matt Ownby and the Daphne team.

Mad Dog McCree, Mad Dog McCree 2: The Lost Gold, Crime Patrol,
Crime Patrol 2: Drug Wars, Last Bounty Hunter, Space Pirates
and Who Shot Johnny Rock? Copyright by Digital Leisure. 

THIS IS A FAN MADE EFFORT. THAT MEANS NO TECHNICAL SUPPORT.


--------------------------- INTRODUCTION ----------------------------


If you are reading this then you have downloaded one of the many
games in my American Laser Games SINGE collection. This readme
serves as a technical guide for them.

This program is a simulator for one of the following games:

+ Mad Dog McCree
+ Mad Dog 2: The Lost Gold
+ Crime Patrol
+ Crime Patrol 2: Drug Wars
+ Last Bounty Hunter
+ Space Pirates!
+ Who Shot Johnny Rock?

It was written for use with SINGE, a software development kit for
the Daphne arcade laser disc emulator. It is compatible with Windows 
operating systems capable of running Daphne. All games come in the 
form of an setup file which installs the scripts and files necessary 
to play these games. 



--------------------------- REQUIREMENTS ----------------------------


1. A Windows PC CDROM copy of any of the games mentioned 
   in the previous section.
2. A working copy of Daphne with SINGE enabled.
3. About 1GB of free hard drive space per game.
4. A computer fast enough to run Daphne comfortably.

This package only contains program code needed to run the game.
You need to supply the CDROM of the game to 
have access to the video. You can purchase this directly from
Digital Leisure, Ebay or Amazon.com

There are many home versions of these games, but the one
you need is the the Windows PC CDROM version. The games do not run 
off the disc but you need to supply the CDROM media.

As of this writing Daphne does not come with SINGE installed. You
need to download the special Daphne version located at SINGE's
website: 

http://www.jaegertech.net/software/singe

A reasonably fast computer is require to run SINGE based games. Minimum recommended is a single core system with at least 2.4 GHz and 512MB of RAM.

THIS IS A FAN MADE EFFORT. IT IS IN NO WAY SUPPORTED BY DAPHNE. 
THIS IS FREE SOFTWARE --- THAT MEANS NO TECHNICAL SUPPORT.



---------------------------  HOW TO USE  ----------------------------


1. Download the Daphne version that comes with SINGE from this website:

	http://www.jaegertech.net/software/singe
	
2. Look for a file called “Daphne-singe-win32-1.1.zip” and download 
it to your computer.

3. Install the contents of the zip file in step #2 in your 
   computer's hard drive. 

4. Run the program SINGE Installer program from this package
   and follow the instructions.

The first time a game is launched you will get a message
from Daphne about initiating a video parsing process. When this happens
press Enter on your keyboard. You will see a progress bar for every
video file in the game. During the process Daphne's screen
will flicker in green shades. When the process is complete 
the game will start normally.



--------------------- CD-ROM MEDIA REQUIRED -----------------------


Usually with Daphne you purchase a Dragon's Lair DVD and Daphne
will download a ripped version from the Internet of the game 
for you to play. This is not the case with the ALG SINGE Collection. 
You will need to provide your own legal copy to be able to play.

To install the video media run the installer included with this
package. Insert your CDROM into your computer's disc drive.
Tell the installer the drive letter of your disc drive as well as
the location of your Daphne folder. After doing all this, press
the "Begin" button on the installer. Processing the video and
audio may take some time, so be patient while this happens.

When the process is finished the game and program files will be 
installed files in a sub-directory called “SINGE”. For example, 
“c:\daphne_custom\singe\maddog”. Unlike other daphne games this 
directory arrangement is fixed. You can't change or rename it, 
tweak ini settings or move files to a different location. 
Games won't work if you do. 


---------------------- HOW TO PLAY THE GAME ------------------------

After a game launches, press '5' to insert coin, '1' to start a game.
Use your mouse to aim and fire at enemies. Shoot at them before
they fire at you. Mouse left click to shoot, right click to reload.

Your gun starts out with a predetermined amount of bullets. When you 
run out of ammo you can reload by pressing right click on the mouse. 
There are three reload modes, which can be set at the game's options menu:

	1. Immediate : 	As soon as you right click, your gun reloads.
	
	2. On Empty  : 	Gun reloads only when it is out of bullets.
	
	3. On Borders: 	Gun reloads when the aim cursor is pointing
					at any of the screen's borders.
					

NOTE: You can't reload in "Who Shot Johnny Rock?".

At some points the game shows a level select screen.
When this happens shoot at the panel representing the stage you wish to play.

The game is over when the player runs out of lives. If the player 
scored enough points then he or she will get to save their name
at the high score table.

In the case of Johnny Rock, the player does not have lives or 
the ability to reload. Instead the player has money and a big supply 
of ammunition. Money is deducted every time the player dies 
or kills an innocent civilian. The player can buy more bullets
at the ammo store.

ALG games sometimes present the player with memory puzzles. The player
will be asked to remember a number, object or clue to be used later
in the game. Pay attention to the clues given by the characters in the game
you are playing. In some games you will also be able to shoot special 
items which will give you additional bullets.


Hints:

+ Don't shoot innocent civilians.

+ You get more points for playing harder levels or doing headshots. 

+ When in doubt, keep your cursor aimed at the center of the screen.





------------------------- Program Options ------------------------


When you press the service button (key "9" on the keyboard)
you will access the configuration menu. The options
available are:

+ Coins Per Credit: Allows you to set the amount of coins required 
for a game credit.

+ Coins Per Continue: How many coins to trigger a continue credit.

+ Lives Per Credit: Allows you to set the amount of starting lives.

+ Difficulty: The games offer up to four difficulty modes. The harder
the difficulty the less time you have to react.	
	
+ Reload Mode: Allows you to set the reload behavior.

+ Show Nag Clips: Skips the nags videos that show up when the player dies.

+ Cross-hair: Allows you to set the aim cursor appearance.


Use the mouse to navigate the service menu. Left click on the
selected choice to change values. Click on the word "Exit" at the
bottom of the menu to save your changes. You can also exit
the service menu by clicking on the mouse's right button.



------------------------- Known Issues -----------------------------


+ Program crashes immediately after launching

Try doing a re-start of Daphne or your machine.

Make sure you are using the latest SINGE version.

There is a possibility the game can't find a video or audio file it 
needs causing it to close unexpectedly.  Check that you have a 
"sound" folder under Daphne's main directory (e.g., "c:\daphne\sound").
Check daphne_log.txt for complaints about missing video files from daphne. 

A bad command line can also cause this problem. 


+ Program crashes randomly during the game.

Apparently there is an issue when playing sound effects
that causes SINGE to crash. To be fixed in a future version.


+ Program freezes or pauses indefinitely.

No other remedy that to restart Daphne. If you can still fire
then go to the Service Menu (press "9" on the keyboard) and
exit said screen. This will cause to game to reset.


+ When I play <insert game here> I can see a brief black pause when I get killed.

This is normal game behavior.


+ When I un-pause the game after a short while playback gets
erratic, fast forwards or freezes.

This is a sign of a slow computer. Basically Daphne is having a
hard time catching up. No solution other than to get a faster machine.



------------------------- Other Questions ---------------------------

+ "This application has failed to start because the application configuration is incorrect"
"The application failed to initialize properly (0xc0000135)."
"The system cannot execute the specified program."
"This application has failed to start because MSVCR90.dll was not found. Re-installing the application may fix this problem."

You need to install the "Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)" on your Windows system. It's a small file and you can get it here:

	http://bit.ly/Bxl1

If the above link does not work a quick Internet search will point you to the right direction.

+ I changed the frame file/sound/image/video/insert-vital-game-asset 
and now the game doesn't work.

Use the original, unaltered files instead.


+ I changed the location of the video and audio files
from the default place where they were installed and
now I can't run the game.

Re-Install the game leaving the files as they were.


+ How do I pause/cancel the installer?

Press the ESC key at any time during the installation process
(or press the "Cancel" button on the installer window).


+ I can't exit Daphne/Escape key doesn't work.

If you are still running the Windows installation program for this game
then close it before launching Daphne.


+ Can I use the DOS version of the ALG game CDROM?

Only the Windows PC CDROM is compatible with this program.
In the case of Mad Dog McCree, you can also use the 
DVD (NTSC version).


+ I used my own means for ripping the original CDs and
now the video plays out of order or out of sequence.

Use the installer to process the video and audio files.
It's the only method that was tested and is known to work.


+ Any way to disable the aim cursor (make it invisible)?

Go to the Service Menu and click on the 'Crosshair' option.
It will cycle through various cursor types. Select the option
"Trigger Activated".


+ How do I run Daphne in full screen?

Look for the file "play_somegame_fullscreen.bat" 
(or "play_somegame_fullscreen" for those systems that hide 
file extensions). It's located on Daphne's main folder. 
Use that to run the game in full screen.


+ When I get killed or hit a civilian, i get abruptly bumped back 
into the selection screen or the level restarts automatically.

Enable "Show Nag Clips" in the Service Menu. Also if you shoot 
repeatedly you may trigger the nag video to be skipped.

+ Game runs in slow motion. 
+ Game runs in fast forward.
+ Sound clips or skips while playing.
+ Video or audio out of sync.
+ Mouse cursor jerkiness.

These are symptoms of a slow PC.
Try playing on a faster computer or restart Daphne.

It can also can happen on some PCs during the 
first time you run the game (right after parsing files). 
Just let the demo run for a while. It should disappear eventually. 
On slow machines you may need to use hardware acceleration. 


+ I get parsing progress bars every time I play the game
and/or during gameplay.

Delete all the DAT files in your 'cdrom' folder. It's located
under "daphne's main folder\singe\alg_game_name". Next time you run 
Daphne, let it parse the video files again. If done correctly 
the emulator will parse all your media in one heroic pass. 


+ I can't reload/shoot/hear the fire sound in some places.

Some places may have firing/reloading disabled.
It could also mean the reload mode is set to "On Empty"
or "Reload on Borders". Set mode to "Immediate" to reload
on demand.


+ Is there a Free Play mode?

Go to the Service Menu and click on the "Coins per Credit"
multiple times until the words "Free Play" show up.

NOTE: Mad Dog McCree does not have a free play mode.


---------------------- LINUX QUESTIONS -------------------------

+ "Can't load VLDP2 library"

Open up a terminal window. Navigate to daphne's main directory and type:

	export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

Another way is to copy libvldp2.so and linsinge.so to /usr/lib.

	sudo cp libvldp2.so /usr/lib
	sudo cp libsinge.so /usr/lib


+ CD extraction script get_files.sh is not working.

Open up a terminal window. Navigate to the folder "cdrom" where
the "get_files.sh" file resides. Type the following commands:

	chmod +x get_files.sh
	./get_files.sh /media/name_of_cd_label



+ Video files are not being extracted.

ffmpeg is probably missing in your Linux system. Do a google search
on how to install ffmpeg under your linux distribution.



+ Daphne hangs after quitting.

This is a known issue with static singe builds under linux.
Use a dynamic build instead.



------------------------- Final Notes ---------------------------

* Donate money to Daphne. It will have a direct
impact on the likelihood of future releases as well as 
motivate the people involved. Show your support!

http://www.daphne-emu.com/donations/
