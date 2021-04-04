
Recode Singe 2 video files for Singe 1
--------------------------------------

    ffmpeg -i <original>.mp4 -an -codec:v mpeg2video -b 4182k <game>.m2v
    ffmpeg -i <original>.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k <game>.ogg

**e.g.**

    ffmpeg -i Puss_in_Boots_english.mp4 -an -codec:v mpeg2video -b 4182k pussinboots.m2v
    ffmpeg -i Puss_in_Boots_english.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k pussinboots.ogg


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

    sudo apt-get install imagemagick

Copy original images to subdirectory *'original'*

    mkdir original
    cp *.png original
    cd original

Run **convert_png.sh** script within *'original'* subdirectory.

    ./convert_png.sh
    
Alter *scale* in script for preference - 3 works for most games.    

### Convert .singe files (for reference only)

All references to peripheral files should link to ``singe/<gamename>`` in the singe script.
    
This has already been performed for data in this repo.

However below are scripts to help you do this if porting over.

    #!/bin/bash
  
    export NAME="s/Puss_in_Boots_english_singe_2//g"
    export GAME="pussinboots"

    perl -p -i -e 's/'$NAME'//g' *.singe

    perl -p -i -e 's/\/Script/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Cfg/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Fonts/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Sounds/singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/\/Overlay/singe\/'$GAME'/g' *.singe

    perl -p -i -e 's/MYDIR\ \.\. \"\/Script/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Cfg/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Fonts/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Sounds/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\ \.\. \"\/Overlays/\"singe\/'$GAME'/g' *.singe

    perl -p -i -e 's/MYDIR\.\."\/Script/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Cfg/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Fonts/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Sounds/\"singe\/'$GAME'/g' *.singe
    perl -p -i -e 's/MYDIR\.\."\/Overlays/\"singe\/'$GAME'/g' *.singe


### These games have known issues:

* maddog
