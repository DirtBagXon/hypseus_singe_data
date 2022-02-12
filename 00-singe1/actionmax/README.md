# ActionMax INSTALL

## ActionMax install for RetroPie

Ensure you have setup [singe](https://github.com/DirtBagXon/hypseus-singe/blob/master/src/3rdparty/retropie/RETROPIE.md)

Obtain ActionMax from: [Archive.org](https://archive.org/details/singev1-actionmax)  

Place the `actionmax` folder as `~/RetroPie/roms/daphne/actionmax` <sub>_- (**Note:** no .daphne extension)_</sub>  

Within your rom folders, symlink actionmax folders:  

    cd ~/RetroPie/roms/daphne

    ln -s actionmax 38ambushalley.daphne
    ln -s actionmax bluethunder.daphne
    ln -s actionmax hydrosub2021.daphne
    ln -s actionmax popsghostly.daphne
    ln -s actionmax sonicfury.daphne
    
You will then need to alter the LUA to reference _one_ on the above game folders, `38ambushalley` in this example:

    cd ~/RetroPie/roms/daphne
    
    perl -p -i -e 's#singe/actionmax/#singe/38ambushalley/#g' actionmax/*.singe

This will replace entries within the LUA like this:

    spriteLoad("singe/actionmax/sprite_lighton.png")
    spriteLoad("singe/38ambushalley/sprite_lighton.png")
 
Cleaner methods may yet be conceived, a discussion can be seen [here](https://github.com/DirtBagXon/hypseus_singe_data/discussions/5).

Reload emulationstation  
Enjoy **VHS** fun


## Current ActionMax Status (SDL2)

These games read specific pixels from the YUV/YV12 video overlay in an SDL_Texture.

Reading information from SDL_Textures is problematic as it is contained in GPU memory.

This can be achieved using SetRenderTarget and RenderReadPixels but is a 'slow' _read()_ call.  

<strike>Currently SDL2 on _arm64/armhf_ Linux for the Raspberry Pi doesn't support this action.</strike>

ActionMax works as expected on _x86_64/i386_ Linux and with the **SDL 2.0.16** library on Windows..

As of **SDL 2.0.20** ActionMax games have been confirmed as working on a Raspberry Pi4.
