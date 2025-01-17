SPACE ROCKS for Hypseus
Copyright © Widge 2025
www.youtube.com/@widge

This game, SPACE ROCKS, is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
See LICENSE.TXT for more information



WELCOME TO SPACE ROCKS!
-----------------------
The vast expanse of space is a dangerous place, and you’re caught in the middle of it. Fields of massive rocks drift endlessly, threatening to tear your ship apart at every turn. Armed with powerful guns and sharp reflexes, your mission is clear: break through the chaos, dodge the rubble, and survive as long as you can.

But survival isn’t just about the rocks. Hostile flying saucers prowl the void, relentless in their pursuit. There’s no escaping them; they’re always watching, always hunting. Their weapons are deadly, and their unpredictable movements make them even more dangerous. Your only choice is to outmanoeuvre them and strike first—before they strike you.

Each level intensifies the danger, pushing your skills as a pilot to their breaking point. The question is not just whether you’ll survive, but how long you can endure. Will you emerge victorious, or will the unyielding hazards of space finally claim your ship?

Step into the cockpit, lock onto your targets, and prepare for the ultimate battle for survival. The stars are hostile — how long can you last?



REQUIREMENTS
------------
SPACE ROCKS needs Hypseus Singe version 2.11.4 or later.
Development was done on a Raspberry Pi 5 and it is recommended that the device you use to play SPACE ROCKS is at least as capable. Testing on Raspberry Pi 4 resulted in very poor performance.



FEATURES
--------
 - Each wave starts with four large rocks.  If you fail to destroy all the rocks before long, more rocks will periodically arrive until the wave is complete.
 - The speed of the rocks increases with each wave. Smaller rocks move faster than larger rocks.
 - The further you progress, the likelihood that you will encounter a Flying Saucer increases.
 - There are three types of Flying Saucer, each more challenging than the last.
 - As you destroy more lower-ranked Saucers, the likelihood of encountering higher-ranked Saucers increases.
 - Destroying Flying Saucers gives you the opportunity to collect power-ups that can supply you with extra lives, warps, weapon upgrades and more.
 - Finish a wave before the clock runs out for a time-based score bonus.
 - Points values increase as you progress, giving you the opportunity to achieve super-high scores.



CONTROLS
--------
SPACE ROCKS can be controlled using gamepad, keyboard, or keyboard + mouse device (including spinner, trackball, etc.).  Various control modes can be selected in the Settings menu depending on your preference. An ini file has been provided with a suggested control scheme.

LEFT/RIGHT = Rotate ship clockwise/anticlockwise
UP/DOWN = Thrust forward/reverse.
B1 = Warp  (teleport to another part of space, limited use)
B2 = Boost (hold for faster rotation, or slower if inverted)
B3 = Shoot (fire bullets)

 - For Keyboard-only use, normal movement controls are the cursor keys. Ensure CONTROL MODE is set to NORMAL.
 - For Gamepad use, normal movement controls are on the D-pad, but you can also thrust using the R2 & L2 buttons (as defined in the .ini file). Setting CONTROL MODE to GAMEPAD removes the thrust controls from the D-Pad.
 - If using a Mouse device (including spinners and trackballs), Set CONTROL MODE to either MOUSE X-AXIS or MOUSE Y-AXIS according to which of your device's axes should control your ship's rotation.



SETTINGS
--------
Access the Settings menu from the game's title screen by pressing either the SERVICE or COIN1 button, or in-game by pressing PAUSE or START1.

 - MUSIC:  - - - - - - - - - - Enable/disable the music.
 - MUSIC VOLUME: - - - - - - - Volume level of the music (1-128).
 - SFX VOLUME: - - - - - - - - Volume level of the sound effects (1-64).
 - CONTROL MODE: - - - - - - - (NORMAL | GAMEPAD | MOUSE X-AXIS | MOUSE Y-AXIS)
 - ROTATION SENSITIVITY: - - - Adjust rotation speed (Normal 1-5, Mouse 1-10).
 - REVERSE ROTATION: - - - - - Enable to reverse rotation controls.
 - INVERT ROTATION BOOST:  - - Enable to invert the Boost behaviour.
 - SWAP FIRE & WARP BUTTONS: - Enable to invert Shoot and Warp buttons.
 - VIBRATION:  - - - - - - - - Enable/disable vibration feedback on compatible gamepads.



MUSIC
-----
The music provided with SPACE ROCKS has been made especially for this game. However you can use any music you prefer.
 - If you would like to add your own music to SPACE ROCKS, then place your mp3 files in the existing `music` subfolder and modify the song list in `spacerocks.cfg`.
 - Entries in the song list should be in the following format:   filename.mp3,Song Name,Artist Name
 - Filenames are case sensitive.
 - The song list must not contain any blank lines.
 - If `spacerocks.cfg` doesn't contain a song list, then the default song list will be automatically created.
 - If there are invalid entries in the song list then this will cause SPACE ROCKS to crash when it attempts to load a music file that doesn't exist.



DISTRIBUTION
-----------
If you redistribute SPACE ROCKS, please ensure that:
 - you remove any of your personal song additions;
 - all of the original music and assets are present;
 - you delete `spacerocks.cfg` and `spacerocks.ram` to ensure that the next user has default settings and clean high-score and stats tables.




SETTING UP
----------
Be mindful that filepaths may differ depending on how you choose to store and arrange your files.

WINDOWS
  Place the files in your `Hypseus Singe\roms\` folder as follows
    roms
     |--spacerocks
     |    |--assets
     |    |   |--(all asset files)
     |    |    
     |    |--music
     |    |   |--(all music files)
     |    |
     |    |-spacerocks.m2v
     |    |-spacerocks.txt
     |    |-spacerocks.ini
     |    |-spacerocks.singe
     |    |-game.singe
     |    |-license.txt
     |    |-_readme.txt
  
  Create a .bat file in your `batch` or `bat files` folder with the following command line:
    ..\hypseus.exe singe vldp -gamepad -keymapfile "roms\spacerocks\spacerocks.ini" -framefile "roms\spacerocks\spacerocks.txt" -script "roms\spacerocks\spacerocks.singe" -fullscreen


RETROPIE (RPi 5)
  Place the files in your `~/RetroPie/roms/daphne/` folder as follows
    daphne
     |--spacerocks.daphne
     |    |--assets
     |    |   |--(all asset files)
     |    |    
     |    |--music
     |    |   |--(all music files)
     |    |
     |    |-spacerocks.m2v
     |    |-spacerocks.txt
     |    |-spacerocks.singe
     |    |-game.singe
     |    |-license.txt
     |    |-_readme.txt

  Place `spacerocks.ini` in `/opt/retropie/configs/daphne/ram/singe/spacerocks/`
  Ensure that the locations and files they are owned by the user (usually `pi`), not `root`.
  Restart EmulationStation for the game to appear in your gamelist.




LEGAL STUFF
-----------
This game, SPACE ROCKS, is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
See LICENSE.TXT for more information
