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
Enjoy **VHS** fun


## Current ActionMax Status (SDL2)

These games read specific pixels from the YUV/YV12 video overlay in an SDL_Texture.

Reading information from SDL_Textures is problematic as it is contained in GPU memory.

This can be achieved using SetRenderTarget and RenderReadPixels but is already a slow process.  
It also only seems to be implemented well in X11.

It appears RetroPie (**armhf**) isn't handling this well at the moment.

ActionMax (armhf) will not work with SDL_RENDERER_ACCELERATED only in software SDL_RENDERER_SOFTWARE  
using the **-nohwaccel** argument.

The issue then is that the CPU has to handle this heavy texture switching and reading, and the Pi struggles.

ActionMax works as expected on (**x86_64**) and (**i386**) RetroPie builds using hardware acceleration in X11.

The Windows version (no X11) requires **-nohwaccel** but CPU grunt handles it fine from there.

Without a major rewrite of the overlay codebase, this is a casualty of the SDL1 to SDL2 porting, until better X11 support is  
implemented or SDL2 matures.
