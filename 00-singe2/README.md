# Hypseus Singe
  
## 'Framework' Folder

Many Singe 2 games require the existence of the `Framework` folder, alongside the games folders, within the _hypseus_ `singe` sub-folder.

Ensure you keep this _sub-folder_ files up-to-date.

**_Note:_** Certain platforms may require the `Framework` folder to be named `Framework.daphne`

## Singe 2 games (Full overlay)

These game folders should be placed within the _hypseus_ `singe` sub-folder.

Only _video/audio_ conversion is required, via _ffmpeg_, as detailed on main page.

See _framefile (txt)_ within each folder for the media naming convention, media files should be placed in the `Video` sub-folder.

The `BASEDIR` and `MYDIR` definitions in each main _.singe_ file can alter folder hierarchy.

## Singe 2 games (New Style _SBC_ Minimal Overlay)

If the game has sprites to accommodate the Minimal Overlay, in the `Overlay/Minimal` folder, it will normally contain the header line:


    dip_MinimalOverlay = 0

This will be within the main `<game>.singe` file. Change this value to `1` to enable the Minimal Overlay.


**_Note:_** SBC's may also require the video resolution to be downscaled with:

    -vf scale=<x value>:<y value>

<sup>_(See ffmpeg examples on main page)_</sup>

## Starting games

_Example:_

`hypseus singe vldp -framefile singe/Asterix/Asterix.txt -script singe/Asterix/Asterix.singe`
