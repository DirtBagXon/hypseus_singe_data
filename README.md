# Hypseus Singe support for Singe 2 games

### Recode Singe 2 video files for Hypseus Singe

    ffmpeg -i <original>.mp4 -an -qscale:v 4 -b 6000k -codec:v mpeg2video <game>.m2v
    ffmpeg -i <original>.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k <game>.ogg

**e.g.**

    ffmpeg -i Puss_in_Boots_english.mp4 -an -qscale:v 4 -b 6000k -codec:v mpeg2video pussinboots.m2v
    ffmpeg -i Puss_in_Boots_english.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k pussinboots.ogg

If your device is struggling with the HD content, you can resize in this operation:

    ffmpeg -i Puss_in_Boots_english.mp4 -an -qscale:v 4 -b 6000k -vf scale=640:480 -codec:v mpeg2video pussinboots.m2v

### Using this repository

This repo does not contain Copyrighted &copy; material, purely fan made graphics, sounds and LUA scripts.

All data in the subdirectories of this repository has been ported according to the processes below.

You do not **need** to alter any of the peripheral data in these subdirectories.

The **only required** step is to obtain the video files for your required game and perform a video conversion as detailed above using *ffmpeg*. This can be performed on any PC including Windows: https://ffmpeg.org/download.html

Once you have the new **.m2v** and **.ogg** video and audio files: 

* Move them into the relevant subdirectory from this repository.
* Install the subdirectory into your Hypseus Singe ROM folder location.


## Details below are only required for porting new games

### Resize overlay

Find the **OVLW** and **OVLH** definitions. (*Only HD video games will likely contain this*).

Usually in *main.singe*, comment existing and hardcode Singe 320x240 overlay:

    --[[
    OVLW = vldpGetWidth()
    OVLH = vldpGetHeight()
    ]]--

    OVLW = 320
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

    perl -p -i -e 's/MYDIR\.\."\/Script/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Cfg/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Fonts/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Sounds/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Overlay/\"singe\/'$GAME'/g' *.singe

    perl -p -i -e 's/\/Script/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Cfg/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Fonts/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Sounds/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Overlay/singe\/'$GAME'/g' *.singe
    

### These Singe 2 games have known issues:

* ``maddog`` - **Singe 1 version works as expected**
* Due to the **16-bit** limitation of *VLDP* a maximum of **65535** video frames are supported: \
  ``ERROR : current mpeg has too many frames, VLDP will ignore any frames above 65535``

Games using video files collectively over this frame limit will have unpredictable results (**Singe 2 only**)
