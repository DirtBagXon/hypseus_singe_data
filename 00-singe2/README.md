# Hypseus Singe
  
## 'Framework' Folder

Many Singe 2 games require the existence of the `Framework` folder, alongside the games folders, within the _hypseus_ `singe` sub-folder.

Ensure you keep this _sub-folder_ files up-to-date.

## Singe 2 games (Full overlay)

These game folders should be placed within the _hypseus_ `singe` sub-folder.

Only _video/audio_ conversion is required, via _ffmpeg_, as detailed on main page.

See _framefile (txt)_ within each folder for the media naming convention, media files should be placed in the `Video` sub-folder.

The `BASEDIR` and `MYDIR` definitions in each main _.singe_ file can alter folder hierarchy.

## Singe 2 games (New Style _SBC_ Minimal Overlay)

If the game has sprites to accommodate the Minimal Overlay, in the `Overlay/Minimal` folder, an extra option will appear in the _Service Menu_:

_Overlay Resolution_: `Minimal`

Enable this option, then `exit` the _Service Menu_.

On SBC's the following header should be enabled to start the game in the correct mode:

    dip_MinimalOverlay = 1 -- Enable the Minimal Overlay on startup (SBC's)


**_Note:_** SBC's may also require the video resolution to be downscaled with:

    -vf scale=<x value>:<y value>

<sup>_(See ffmpeg examples on main page)_</sup>

## Starting games

_Example:_

`hypseus singe vldp -framefile singe/Asterix/Asterix.txt -script singe/Asterix/Asterix.singe`
