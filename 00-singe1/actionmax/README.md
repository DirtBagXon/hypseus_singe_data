# ActionMax INSTALL

## ActionMax install for RetroPie

Ensure you have setup [singe](https://github.com/DirtBagXon/hypseus-singe/blob/master/src/3rdparty/retropie/RETROPIE.md) or [actionmax](https://github.com/DirtBagXon/actionmax-pi/blob/main/README.md)

Obtain ActionMax from: [Archive.org](https://archive.org/details/singev1-actionmax)  

Using the multigame _ZipROM_ with `-usealt` is now the preferred method of setup, the below instructions are now legacy: 

Place the `actionmax` folder as `~/RetroPie/roms/daphne/actionmax` <sub>_- (**Note:** no .daphne extension)_</sub>  

Within your rom folders, symlink actionmax folders:  

    cd ~/RetroPie/roms/daphne

    ln -s actionmax 38ambushalley.daphne
    ln -s actionmax bluethunder.daphne
    ln -s actionmax hydrosub2021.daphne
    ln -s actionmax popsghostly.daphne
    ln -s actionmax sonicfury.daphne
    
Reload emulationstation  
Enjoy **VHS** fun


## Current ActionMax Status (SDL2)

All SDL issues have been resolved in Hypseus version `2.12.0`
