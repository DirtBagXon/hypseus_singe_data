# Hypseus Singe

## <sup> Note: Framework Zip ROM support [v2.11.6]</sup>

New games requiring this _Framework_ will now be released as `zlua` Zipped ROMs.

Check the [Framework Zip ROMs](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms/00-Framework-zip-rom) folder.

The _LUA_ files contained in the Zip ROM are the same files as within this repository folder.

Refer to ["How to create Zip ROMs"](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms#creating-or-converting-a-zip-rom-game) documention for details on their creation.

# Framework Descripton
  
## 'Kimmy Framework _(v4)_' Folder

Hypseus Singe version **2.11.2** is required.

These games require the existence of the `FrameworkKimmy` folder, alongside the games folders, within the _hypseus_ `singe` sub-folder.

Ensure you keep this _sub-folder_ files up-to-date.

The `BASEDIR` and `MYDIR` definitions in each main _.singe_ file can alter folder hierarchy.

## Kimmy games (_SBC_ Minimal/UltraLo Overlay)

Kimmy, by default, now accommodates the UltraLo Overlay for SBC's.

On SBC's the following header should be enabled to start the game in the correct mode:

    dip_MinimalOverlay = 1 -- Enable the Minimal Overlay on startup (SBC's)


**_Note:_** SBC's may also require the video resolution to be downscaled with:

    -vf scale=<x value>:<y value>

<sup>_(See ffmpeg examples on main page)_</sup>

## Multi Language Support

Hypseus Singe version **2.11.5** is required.

By including the LangOpt array in a game header, Kimmy now supports language switching in the Service Menu.

An example of defining multiple languages is show here:

```
LangOpt = {
    { "English", "" },  -- Default [no suffix]
    { "Spanish", "-es" },
    { "Italian", "-it" },
}
```

The appropriate language `.ogg` files must be included in the media folder:

```
audio.ogg
audio-es.ogg
audio-it.ogg
```

## Older Framework games

Games that previously used the `v3` Framework, _not standalone_, can easily be converted to `Kimmy`

Simply alter the following in the main game `.singe` file headers:

    dofile(BASEDIR .. "/Framework/globals.singe")    -- Don't touch this line

Should become:

    dofile(BASEDIR .. "/FrameworkKimmy/globals.singe")    -- Don't touch this line

## Starting games

_Example:_

`hypseus singe vldp -framefile singe/BD13/BD13.txt -script singe/BD13/BD13.singe`
