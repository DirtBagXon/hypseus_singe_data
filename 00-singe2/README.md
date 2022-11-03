# Hypseus Singe
  
## Singe 2 games (Full overlay)

Only _video/audio_ conversion is required as detailed on main page.

See _framefile (txt)_ within each folder for the media naming convention, media files should be placed in the `Video` sub-folder.

The `BASEDIR` and `MYDIR` definitions in each main _.singe_ file can alter folder hierarchy.

These games **require** the use of the `-set_overlay full` or `-set_overlay half` arguments.

The required argument is dependent upon in-game resolution settings. Gun Games use `full`.

## Starting games

_Example:_

`hypseus singe vldp -set_overlay full -framefile singe/Asterix/Asterix.txt -script singe/Asterix/Asterix.singe`
