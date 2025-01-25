--[[
PROGRAM NAME:			Sonic the Hedgehog, The Movie (Animated, 1996)
VERSION:				1.2
ENGINE:					built and tested on the Hypseus Singe v2.11.4 Framework (not Kimmy)
AUTHOR:					Eggman (Jan 2025)

SYNOPSIS: Sonic, Tails, and Knuckles aim to stop a scheme that would turn their sky realm into an underworld, plunging into the planet's core and the ruined Robotropolis city to confront Dr. Robotnik, unsure if he's ally or foe.

Sonic the Hedgehog, The Movie is a fan-based interactive game for use with the Hypseus Singe software platform, released under the GNU General Public License. Read COPYING.TXT for more information.

Sonic the Hedgehog, The Movie (c) 1991, 1994, 1996 SEGA ENTERPRISES, LTD.
English language version (c) 1999 A.D.Vision, Inc.
All Rights Reserved.

Author Notes:

The original unfinished release by "dqf318" only had the first couple of levels loosely written and out of order. The video was also edited down to 40 minutes from the 54-minute original. The video's original brightness level was decreased in post-processing which gave the video's colors a darker and more washed out look when compared side by side with the untouched DVD video. There were some keyframe errors in the original video that were causing the game to not be able to reference earlier frames, which likely drove dqf318 nuts trying to figure it out and I can only speculate may have been a main reason the game was abandoned.

Determined to get this game into a working state, I replaced dqf318's video with the full 54-minute 1996 DVD (English) version, with no additional color adjustments to the video source. The video maintains the video's original 4:3 aspect ratio in a reencoded 1440x1080 resolution with Handbrake, and I created some simple bezels to support widescreen gameplay. The video was remuxed with ffmpeg from mp4 to m2v for use in Hypseus. Some additional DVD content was also extracted to use in the game, such as the studio intro clips and 2-minute music video trailer. The only video content I am using that was originally created by dqf138 is a handful of video clips and static images for use in the menus (for reference, anything in the "101692_105419_extras.m2v" video file is dqf318's creations).

I extracted the main movie's available Japanese and Russian audio tracks and created additional batch files so you can use the language track of your choice. The Japanese audio is the original track for the movie release in 1996. The English audio track was studio-created by A.D.Video in 1999. The Russian audio track (creator unknown) is a very simple voice dub-over on top of the Japanese track, performed by a single female voice actor narrating all the voices. All audio was normalized in Audacity.

All in-game movements were rewritten. The game's movements only utilize UP, DOWN, LEFT, RIGHT and BUTTON1 - an homage to the original laserdisc games. I am not interested in adding the more complex movements available in the framework to this specific game. I wanted to make the game easily playable by anyone of any age so they can enjoy a balance of game interactions and be able to watch the video without too many distractions.

The game runs on the v3.32b Framework, setup as standalone via the Structured folder within the game folder. You do not need to make any adjustments to your existing Framework folders.

The timing for each movement on Easy mode is set to 20 frames (~3/4 of a second). For more of a challenge, increase your difficulty to Normal (-2 frames), Hard (-4 frames) and Extreme (-8 frames!). Thoughtful player consideration was given to avoid the stringing of movements back-to-back, however there are a few key scenes that will require your attention! Where applicable, SKIP movements were added to bypass longer non-interactive portions of the video for players who have already viewed them.

This game is released to the Hypseus community as-is, with no strings attached. If I make any future changes to the script (such as tweaks, fixing any errors, or adding additional features), I will increment the version number listed in the title above. If someone wants to make changes to this game's script and release their own modified version of this game, feel free to do so.  All I ask is you credit the original authors in your modififed release.

I hope you enjoy my first attempt at writing a full game for the Hypseus platform!  If you have any questions or comments, please feel free to join the Hypseus Singe Discord.

How to add this game to your pre-existing Hypseus Singe setup:
-  extract the game zip and copy/move the 3 subfolders (batch, bezels, singe) into the root of your Hypseus Singe folder (where Hypseus.exe resides). These 3 folders should already pre-exist in your setup, you're just adding the new contents to them. 
- Start the game using the Sonic batch files now located in the batch folder.

]]--