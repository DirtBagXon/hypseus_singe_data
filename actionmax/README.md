# ActionMax INSTALL

## ActionMax install for RetroPie

Ensure you have setup [singe](https://github.com/DirtBagXon/hypseus-singe/blob/master/src/3rdparty/retropie/RETROPIE.md)

Obtain ActionMax from: [Archive.org](https://archive.org/details/singev1-actionmax)  

Place the `actionmax` folder as `~/RetroPie/roms/daphne/actionmax` - **(Note: no .daphne extension)**  

Within your `singe` and rom folders, symlink actionmax folders:  

    cd ~/RetroPie/roms/daphne/singe
    
    ln -s ../actionmax actionmax
    cd ..
    ln -s actionmax popsghostly.daphne
    ln -s actionmax sonicfury.daphne
    ln -s actionmax hydrosub2021.daphne
    ln -s actionmax bluethunder.daphne
    ln -s actionmax 38ambushalley.daphne

Within the `actionmax` folder perform the following to align filenames with daphne.sh - **(Note '.')**

    cd ~/RetroPie/roms/daphne/actionmax
    
    mv 38ambushalley/38ambushalley.singe .
    mv 38ambushalley/frame_38ambushalley.txt 38ambushalley.txt
    mv bluethunder/bluethunder.singe .
    mv bluethunder/frame_bluethunder.txt bluethunder.txt
    mv hydrosub2021/hydrosub2021.singe .
    mv hydrosub2021/frame_hydrosub2021.txt hydrosub2021.txt
    mv popsghostly/popsghostly.singe .
    mv popsghostly/frame_popsghostly.txt popsghostly.txt
    mv sonicfury/sonicfury.singe .
    mv sonicfury/frame_sonicfury.txt sonicfury.txt

Change each framefile to align with new media location - **(Again note '.'):**

Edit **38ambushalley.txt** to:

    .
    
    1       video_actionmaxintro.m2v
    355     38ambushalley/video_38ambushalley.m2v
    28175   video_menu.m2v

Edit **bluethunder.txt** to:

    .
    
    1       video_actionmaxintro.m2v
    355     bluethunder/video_bluethunder.m2v
    27950   video_menu.m2v

Edit **hydrosub2021.txt** to:

    .
    
    1       video_actionmaxintro.m2v
    355     hydrosub2021/video_hydrosub2021.m2v
    28820   video_menu.m2v

Edit **popsghostly.txt** to:

    .
    
    1       video_actionmaxintro.m2v
    355     popsghostly/video_popsghostly.m2v
    31835   video_menu.m2v

Edit **sonicfury.txt** to:

    .
    
    1       video_actionmaxintro.m2v
    355     sonicfury/video_sonicfury.m2v
    26645   video_menu.m2v
 

Reload emulationstation  
Enjoy VHS fun  
