# Hypseus Singe
# Support for Singe 1 and 2 games

Checkout Hypseus Singe game demos on [Youtube](https://www.youtube.com/playlist?list=PLRLuhkf2c3OeRoXydn0upKyIBUXNMK13x)

#### Firstly, ensure you are running at least version 2.8.0 of Hypseus Singe.

If you have older game content, ensure you update the existing lua and other data with files from  
this repository. Backup your existing data, then overwrite the metadata with repository files.  
You only require the video and audio files from your existing version (_see below_).

These games are updated frequently, ensure files are up-to-date.

Feel free to submit pull requests for any fixes or improvements.

## Singe 1 replacement files

Singe 1 files within the ``00-singe1`` folder contain alignment changes and fixes to original games:

- Last Bounty Hunter (*lbh*) now has a **fix** that shows Handsome Harry as captured.....  
- Maddog McCree (*maddog*) has **fix** for nil value error loop in doLevelPond()
- Space Pirates (*spacepirates*) has a **fix** for nil value index error.
- Mad Dog II: Typing Edition (*typing-md2*) has SDL2 keycode porting changes.
- Ninja Hayate: Death loop bug fix in bytecode (_v1.15_) - game now completable.

Fan games have some other changes for alignment and completeness.

These updates are advised for best experience. Pull requests accepted for any fixes or improvements ``:)``

## Using this repository (Singe 2) ported games

This repo does not contain Copyrighted &copy; material, purely fan made graphics, sounds and LUA scripts.

All data in the subdirectories of this repository has been ported from Singe 2 *LUA*.

You should not **need** to alter any of the peripheral data in these subdirectories. However, these \
are customizable games. If you make improvements please consider contributing back to the repository.

The **only required step** is to obtain the video files from Singe 2 for your required game and perform a video conversion as detailed **below** using *ffmpeg*. This can be performed on any PC including Windows: https://ffmpeg.org/download.html

Once you have the new **.m2v** and **.ogg** video and audio files: 

* Check the duration and frame numbers match ``FRAMEINFO.md`` (*see below*).
* Move them into the relevant subdirectory from this repository.
* Install the subdirectory into your Hypseus Singe ROM folder location.
* Play the game.

## Instructions (Video and audio files)

Download the latest complete repository via [**Releases**](https://github.com/DirtBagXon/hypseus_singe_data/releases) (*zip* or *tgz*).

The files in this repository should be installed alongside the required game video (*m2v*) and audio (*ogg*) files.

Refer to the game framefile (*txt*) for video file layout structure.

This repository does not contain any game video or audio files. You are required to aquire these files from other \
sources, [archive.org](https://archive.org) may help.

For Singe 2 recoding follow the instructions below:

### Recoding Singe 2 mp4 video files for Hypseus Singe

Singe 2 game files in this repository are based around various releases of Singe 2 games on [archive.org](https://archive.org) \
Check ``FRAMEINFO.md`` for the required video for each game, it may be situated elsewhere.

Newer games, like Altered Carbon, Chantze Stone work from current releases. \
But again check ``FRAMEINFO.md``.

Frame information from ``mediainfo`` will be provided for the Singe 2 video files in a file called ``FRAMEINFO.md`` in each folder:

    mediainfo --Inform='Video;%FrameCount%' <file>
    mediainfo --Inform='Video;%Duration%' <file>

``mediainfo`` can usually be installed in Linux via packaging, e.g.:

    sudo apt-get install mediainfo
    
In Windows: https://mediaarea.net/en/MediaInfo/Download/Windows

    View  -> Tree
    Debug -> Advanced Mode

Look for '*Duration*' and '*Frame Count*'

This should allow you to know the correct video files required.

### Conversion:

    ffmpeg -i <original>.mp4 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video <game>.m2v
    ffmpeg -i <original>.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k <game>.ogg

In some cases audio is delayed in the original MP4, check with VLC. If so use `-ss` to delay encode start:

    ffmpeg -i <original>.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k <game>.ogg

**e.g.**

    ffmpeg -i FaI.mp4 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video fireandice.m2v
    ffmpeg -i FaI.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k fireandice.ogg

If your device is struggling with the HD content, you can resize in this operation:

    ffmpeg -i FaI.mp4 -an -qscale:v 4 -b:v 6000k -vf scale=640:480 -codec:v mpeg2video fireandice.m2v

If sound is out of sync, use `-ss` to delay audio encode start in `ms` *(hh:mm:ss.SSS)*:

    ffmpeg -i DL2E.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k dl2e.ogg

### Audio Delay

Due to an issue in the Singe 2 audio system, many of the games will have a delay in the MP4.

You can **fix** any existing `.ogg` files with delay easily, using:

    mv dl2e.ogg dl2e_delayed.ogg
    ffmpeg -i dl2e_delayed.ogg -ss 00:00:00.330 -c copy dl2e.ogg

## Details below are only required for porting new games

### Resize overlay

Find the **OVLW** and **OVLH** definitions. (*Only HD video games will likely contain this*).

Usually in *main.singe*, comment existing and hardcode Singe 360x240 overlay:

    --[[
    OVLW = vldpGetWidth()
    OVLH = vldpGetHeight()
    ]]--

    OVLW = 360
    OVLH = 240

### Resize PNG's

If images (``.pngs``) appear too large when ported, resize them.  

    sudo apt-get install imagemagick pngcrush

Copy original images to subdirectory *'original'*

    mkdir original
    cp *.png original
    cd original

Run **convert_png.sh** script within *'original'* subdirectory.

    ./convert_png.sh
    
Alter *scale* in script for preference - 2.5 to 3 works for most games.

Some graphics will not convert to 8-bit satisfactorily, these will need to be recreated.

### Converting .singe files

All references to peripheral files should link to ``singe/<gamename>`` in the singe script.
    
This has already been performed for data in this repo.

However below are scripts to help you do this if porting over.

Use the `MYDIR` variable to make all game content relative:

    MYDIR = "singe/carbon/"

    #!/bin/bash

    perl -p -i -e 's/\/Cfg\///'g *.singe
    perl -p -i -e 's/\/Fonts\///'g *.singe
    perl -p -i -e 's/\/Overlay\///'g *.singe
    perl -p -i -e 's/\/Script\///'g *.singe
    perl -p -i -e 's/\/Sounds\///'g *.singe
    perl -p -i -e 's/\/Video\///'g *.singe
    perl -p -i -e 's/\/Movie\///'g *.singe

### Alignment changes

Due to the overlay size differences, some alignment changes will be required in the LUA.

### Singe 2 game porting limitations:

The Daphne VLDP has been upgraded to a **32bit** <sup>(_2_^_32_)</sup> frame limit as of version **2.8.0** of Hypseus Singe

<strike>Due to the **16-bit** limitation of *VLDP* a maximum of **65535** video frames are supported: \
  ``ERROR : current mpeg has too many frames, VLDP will ignore any frames above 65535``</strike>

<strike>Games using video files collectively over this frame limit will have unpredictable results (**Singe 2 only**)</strike>
