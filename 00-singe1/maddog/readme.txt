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
Copyright 1991-1994 American Laser Games

THIS IS A FAN MADE EFFORT. IT IS IN NO WAY
SUPPORTED BY DAPHNE. DO NOT ASK DAPHNE AUTHORS FOR TECHNICAL SUPPORT.


--------------------------- INTRODUCTION ----------------------------


If you are reading this then you have download one of the many
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
to play these games. Read on to learn more.



--------------------------- REQUIREMENTS ----------------------------


To play any of the games on the ALG SINGE Collection you will need:

1. A Windows PC CDROM copy of any of the games mentioned 
   in the previous section.
2. A working copy of Daphne with SINGE installed.
3. About 1 to 2GB of free hard drive space per game.
4. A computer fast enough to run Daphne comfortably.

This package only contains program code needed to run the game.
You need to supply the CDROM of the game to 
have access to the video. You can purchase this directly from
Digital Leisure, Ebay or Amazon.com


There are many home versions of these games, but the one
you need is the the Windows PC CDROM version. The game does not run 
off the disc. Video needs to be extracted and processed into 
a format Daphne can understand. The setup executable will take
care of this for you, but you need to supply the CDROM media.

As of this writing Daphne does not come with SINGE installed. You
need to download the special Daphne version located at SINGE's
website: 

http://www.jaegertech.net/software/singe

A computer fast enough to run Daphne comfortably is required for use 
with SINGE. This is a simulator so a little bit of extra processing 
power is needed. That said you will probably be able able to run
this easily on any computer 5 years old or newer.


PLEASE UNDERSTAND THIS IS A FAN MADE EFFORT. IT IS IN NO WAY
SUPPORTED BY DAPHNE. DO NOT ASK DAPHNE AUTHORS FOR TECHNICAL SUPPORT.



---------------------------  HOW TO USE  ----------------------------


1. Download the Daphne version that comes with SINGE from this website:

	http://www.jaegertech.net/software/singe
	
2. Look for a file called “Daphne-singe-win32-1.0.zip” and download 
it to your computer.

3. Install the contents of the zip file in step #2 in your 
   computer's hard drive. 

4. Run the program "SINGE ALG Installer" from this package
   and follow the instructions.

The very first time a game is run you will get a message
from Daphne about initiating a video parsing process. When this happens
press Enter on your keyboard. You will see a progress bar for every
video file in the game. During the process you will Daphne's screen
window flicker in green shades. When the process is complete 
the game will start normally.



----------------------- RIPPING THE CDROM ---------------------------


Usually with Daphne you purchase a Dragon's Lair DVD and Daphne
will download a ripped version from the Internet of the game 
for you to play. This is not the case with the ALG SINGE Collection. 
You will need to provide your own legal copy to be able to play.

To install the video media run the installer included with this
package. Insert your CDROM into your computer's disc drive.
Tell the installer the drive letter of your disc drive as well as
the location of your Daphne folder. After doing all this, press
the "Begin" button on the installer. Processing the video and
audio may take some time, so take a break while the computer
is busy.

When the process is finished the game and programe files will be 
installed files in a sub-directory called “SINGE”. For example, 
“c:\daphne_custom\singe\maddog”. Unlike other daphne games this 
directory arrangement is fixed. You can't change or rename it, 
tweak ini settings or move files to a different location. 
Please keep this in mind, specially those of you with specific 
front-ends or hard drive organizational preferences. 


---------------------- HOW TO PLAY THE GAME ------------------------

After a game launches, press '5' to insert coin, '1' to start a game.
Use your mouse to aim and fire at enemies. Shoot at them before
they fire at you. Mouse left click to shoot, right click to reload.

Your gun starts out with six or twelve bulletss. When you run out of ammo
you can reload by pressing right click on the mouse. There are three
reload modes, which can be set at the game's options menu:

	1. Immediate : 	As soon as you right click, your gun reloads.
	
	2. On Empty  : 	Gun reloads only when it is out of bullets.
	
	3. On Borders: 	Gun reloads when the aim cursor is pointing
					at any of the screen's borders.
					

NOTE: You can't reload in "Who Shot Johnny Rock?".

The games usually present the player with level select menus.
Shoot at the panel representing the stage you wish to play.

The game is over when the player runs out of lives. If the player 
scored enough points then he or she will get to save their name
at the high score table.

In the case of Johnny Rock, the player does not have lives or 
the ability to reload. Instead the player has money and a big supply 
of ammunition. Money is deducted every time the player dies 
or kills an innocent civillian. The player can buy more bullets
at the ammo store.

ALG games sometimes present the player with memory puzzles. The player
will be asked to remember a number, object or clue that
will later become useful. This usually means the player will have
to shoot said object later in game (sometimes in a specific order).
Pay attention to the clues given by the characters in the game
you are playing.


Hints:

+ Don't shoot innocent civillians.

+ You get more points for playing harder levels. 

+ When in doubt, keep your cursor aimed at the center of the screen.

+ Some games have special bonus items that give the player
extra ammunition when you shoot at them.




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
bottom of the menu to save your changes.



------------------------- Known Issues -----------------------------


+ Program crashes immediately after launching

There is a possibility the game can't find a video or audio file it 
needs causing it to close unexpectedly.  Check that you have a 
"sound" folder under Daphne's main directory (eg, "c:\daphne\sound").
Check if the sound file "saveme.wav" exists in the "sound" folder
of your “Daphne-singe-win32-1.0”. Check daphne_log.txt for complaints
about missing video files from daphne. If you do then re-install the game.

Other reasons: Sometimes if you run Daphne windowed and
quickly do a click and drag with your mouse to move the window
just moments after launching will cause Daphne to crash.


+ Program crashes randomly during the game.

Apparently there is an issue when playing sound effects
that causes SINGE to crash. To be fixed in a future version.


+ Program freezes or pauses indefinitely.

No other remedy that to restart Daphne. If you can still fire
then go to the Service Menu (press "9" on the keyboard) and
exit said screen. It will cause to game to reset.


+ When I play <insert game here> I can see a brief black pause when I get killed.

This is normal game behavior.


+ When I pause the game I can still shoot or trigger game events.

This is an SDK-related bug. To be fixed in a future version.



------------------------- Other Questions ---------------------------



+ I changed the frame file/sound/image/video/insert-vital-game-asset 
and now the game doesn't work.

Use the original, unaltered files instead.


+ I changed the location of the video and audio files
from the default place where they were installed and
now I can't run the game.

Re-Install the game leaving the files as they were.


+ The installer program failed to complete the process.

The installer needs to be left alone without interference
while it is working. Try running it again at a less busier time.


+ How do I pause/cancel the installer?

Press the ESC key at any time during the installation process
(or press the "Cancel" button on the installer window).


+ Can I use the DOS version of <insert ALG game name> CDROM?

Only the Windows PC CDROM is compatible with this program.
In the case of Mad Dog McCree, you can also use the 
DVD (NTSC version).


+ I used my own means for ripping the DVD video and
now the video plays out of order or out of sequence.

Use the installer to process the video and audio files.
It's the only method that was tested and is known to work.


+ How do I hide Window's mouse cursor?

Window's default mouse cursor is hidden only while the game 
is in full screen.


+ How do I run Daphne in full screen?

Look for the file "play_somegame_fullscreen.bat" 
(or "play_somegame_fullscreen" for those systems that hide 
file extensions). It's located on Daphne's main folder. 
Use that to run the game in full screen.


+ When I get killed or hit a civilian, i get abruptly bumped back 
into the selection screen or the level restarts automatically.

Enable "Show Nag Clips" in the Service Menu. Also if you shoot 
repeatedly you may trigger the nag video to be skipped.


+ The game runs in slow motion. 
+ Sound clips or skips while playing.
+ Video or audio seems to be un-synced.

This is usually a symptom of a slow PC.

It can also can happen on some PCs during the first time you run the 
game (right after parsing files). Just let the 
demo run for a while. It should disappear eventually. 
On slow machines you may need to use hardware acceleration. 
You can also try activating Daphne's OpenGL mode.
Read Daphne's documentation for more information.


+ I get parsing progress bars while playing in game.

Delete all the DAT files in your 'cdrom' folder. It's located
under daphne main folder\singe\alg_game_name. Next time you run 
Daphne, let it parse the video files again. If done correctly 
the emulator will parse all your media in one heroic pass. 


+ I can't reload/shoot/hear the fire sound in some places.

Some places may have firing/reloading disabled.
It could also mean the reload mode is set to "On Empty"
or "Reload on Borders". Set mode to "Immediate" to reload
on demand.


+ Any way to disable the aim cursor (make it invisible)?

Go to the Service Menu and click on the 'Crosshair' option.
It will cycle through various cursor types. Select the option
"Trigger Activated".


+ Is there a Free Play mode?

Go to the Service Menu and click on the "Coins per Credit"
multiple times until the words "Free Play" show up.

NOTE: Mad Dog McCree does not have a free play mode.




------------------------- Final Notes ---------------------------

* Donate money to Daphne. It will have a direct
impact on the likelihood of future releases as well as 
motivate the people involved. Show your support!

http://www.daphne-emu.com/donations/
