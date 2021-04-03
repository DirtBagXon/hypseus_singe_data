
Recode Singe 2 video files for Singe 1
--------------------------------------

    ffmpeg -i <original>.mp4 -an -codec:v mpeg2video -b 4182k <game>.m2v
    ffmpeg -i <original>.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k <game>.ogg

*e.g.*

    ffmpeg -i Puss_in_Boots_english.mp4 -an -codec:v mpeg2video -b 4182k pussinboots.m2v
    ffmpeg -i Puss_in_Boots_english.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k pussinboots.ogg

### These games have known issues:

* maddog

### Convert .singe files (for reference only)

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
