# Hypseus Singe anomaly files +
# Support for Singe 2 games

#### Firstly, ensure you are running at least version 2.6.6 of Hypseus Singe.

##### If you are upgrading from < 2.6.4 you will need the latest files from this repo to align sprites correctly in ported games.

Feel free to submit pull requests for any fixes or improvements.

## Singe 1 replacement files

Version **2.6.6** fixed several timing issues, so replacement files are no longer needed for this.

Singe 1 files within the ``00-singe1`` folder now only contain alignment changes and fixes:

- Last Bounty Hunter (*lbh*) now has a **fix** that shows Handsome Harry as captured.....  
- Maddog McCree (maddog) has **fix** for nil value error loop in doLevelPond()
- Space Pirates (spacepirates) has a **fix** for nil value index error.

The Fan games have some other minor changes for completeness.

These are optional. Pull requests accepted for any fixes or improvements ``:)``

## Using this repository (Singe 2) ported games

This repo does not contain Copyrighted &copy; material, purely fan made graphics, sounds and LUA scripts.

All data in the subdirectories of this repository has been ported from Singe 2 *LUA*.

You should not **need** to alter any of the peripheral data in these subdirectories.

The **only required step** is to obtain the video files from Singe 2 for your required game and perform a video conversion as detailed **below** using *ffmpeg*. This can be performed on any PC including Windows: https://ffmpeg.org/download.html

Once you have the new **.m2v** and **.ogg** video and audio files: 

* Check the duration and frame numbers match ``FRAMEINFO.md`` (*see below*).
* Move them into the relevant subdirectory from this repository.
* Install the subdirectory into your Hypseus Singe ROM folder location.
* Play the game.

### Recoding Singe 2 mp4 video files for Hypseus Singe

Singe 2 game files in this repository are mostly based around the first release of Singe 2 games on archive.org \
Check ``FRAMEINFO.md`` for the required video for each game, it may be situated elsewhere.

Newer games, like Altered Carbon, will work from current releases as they were not original release games.  
But again check ``FRAMEINFO.md``.

Frame information from ``mediainfo`` will be provided for the Singe2 video files in a file called ``FRAMEINFO.md`` in each folder:

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

**e.g.**

    ffmpeg -i FaI.mp4 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video fireandice.m2v
    ffmpeg -i FaI.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k fireandice.ogg

If your device is struggling with the HD content, you can resize in this operation:

    ffmpeg -i FaI.mp4 -an -qscale:v 4 -b:v 6000k -vf scale=640:480 -codec:v mpeg2video fireandice.m2v


## Details below are only required for porting new games

### Resize overlay

Find the **OVLW** and **OVLH** definitions. (*Only HD video games will likely contain this*).

Usually in *main.singe*, comment existing and hardcode Singe 320x240 overlay:

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
    
Alter *scale* in script for preference - 3 works for most games.    

### Converting .singe files

All references to peripheral files should link to ``singe/<gamename>`` in the singe script.
    
This has already been performed for data in this repo.

However below are scripts to help you do this if porting over.

    #!/bin/bash
  
    export NAME="Puss_in_Boots_english_singe_2"
    export GAME="pussinboots"

    perl -p -i -e 's/'$NAME'//g' *.singe

    perl -p -i -e 's/MYDIR\ \.\. \"\/Script/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Cfg/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Fonts/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Sounds/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Overlay/\"singe\/'$GAME'/g' *.singe


### These Singe 2 games have known issues:

* ``maddog`` - **Singe 1 version works as expected**
* Due to the **16-bit** limitation of *VLDP* a maximum of **65535** video frames are supported: \
  ``ERROR : current mpeg has too many frames, VLDP will ignore any frames above 65535``

Games using video files collectively over this frame limit will have unpredictable results (**Singe 2 only**)
