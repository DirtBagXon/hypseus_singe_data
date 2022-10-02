## Details below are only required for porting new games to restricted overlays

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

Some graphics will not convert to _8-bit_ satisfactorily, these will need to be recreated.

### Converting .singe files

All references to peripheral files should link to ``singe/<gamename>`` in the singe script.
    
This has already been performed for data in this repo.

However below are scripts to help you do this if porting over.

Use the `MYDIR` variable to make all game content relative:

    #!/bin/bash

    perl -p -i -e 's/\/Cfg\///'g *.singe
    perl -p -i -e 's/\/Fonts\///'g *.singe
    perl -p -i -e 's/\/Overlay\///'g *.singe
    perl -p -i -e 's/\/Script\///'g *.singe
    perl -p -i -e 's/\/Sounds\///'g *.singe
    perl -p -i -e 's/\/Video\///'g *.singe
    perl -p -i -e 's/\/Movie\///'g *.singe
    perl -p -i -e 's/\.\.MIDIRES//g' main.singe

### Alignment changes

Due to the overlay size differences, some alignment changes will be required in the LUA.

