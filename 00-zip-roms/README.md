# Hypseus Singe

## Zipped LUA ROMS (Require v2.11.2)

These `.zip` files can be used to replace existing Singe folder structures.

The _zip_ name relates to the current _game_ folder structure name.

As detailed on the main repo page, zipped ROM files are not bound to the _singe/_ subfolder and can be placed in any convenient location. The _.txt_ framefile is still required to locate video and audio data, however, as with the _.zip_, this is no longer bound to the _singe/_ subfolder.

A typical argument set using zip ROMs may begin:

```
hypseus singe vldp -zlua roms/timegal.zip -framefile vldp/timegal/timegal.txt ...
```


A folder structure (_as below_) is now sufficient:

```
roms
├── timegal.zip
│ 
vldp
├── timegal
│   ├── timegal.m2v
│   ├── timegal.ogg
│   └── timegal.txt
```

## Multi-Game Zipped ROM Packages _(v2.11.3)_

For multi-game zip ROM packages, use the `-usealt` argument to determine which game within the zip to start.

```
hypseus singe vldp -zlua roms/actionmax.zip -usealt bluethunder -framefile vldp/actionmax/bluethunder.txt ...
```

The folder structure remains as above:

```
roms
├── actionmax.zip
│ 
vldp
├── actionmax
│   ├── <game>.m2v
│   ├── <game>.ogg
│   └── bluethunder.txt
│   └── sonicfury.txt
│   └── ...
```

## Zipped Framework ROM Packages _(v2.11.6)_

These behave in exactly the same manner as the standard Zip LUA packages, but contain a separate `Framework` folder within the zip.

For usage examples, see below and above. Both single and multi-game formats are supported.

```
hypseus singe vldp -zlua roms/Chantze_HD.zip -usealt Triad_HD -framefile vldp/Chantze_HD/Chantze_HD.txt ...
```

## Creating (or Converting) a Zip ROM game

Ensure any new zip file has an internal folder structure beginning with a sub-folder called `singe`.
* Use the standard zip _deflate_ algorithm.

Within the `singe` sub-folder place the `<game>` folder with all files **except** video `.m2v` and audio `.ogg` files.
* No changes to any LUA should be required. It's a simple _drag'n'drop_.
* The _framefile.txt_ is optional. However, if stored, serves as an archive for future users.

**Important Note:**  
When storing `.cfg` files (_configuration and hi-scores_) within the zip, ensure that the files are _'generic'_ and do not contain _your_ personal High Scores or _your_ personal configuration preferences. These configurations will be used as defaults, on the first use of the zip, by a new user.
* Also ensure `default.cfg` mirrors `game.cfg`

**Frameworks:**  
If the game requires a helper _'Framework'_ sub-folder, simply copy the relevant folder alongside the `<game>` folder, within the `singe` sub-folder.

**Note**: The _Kimmy_ Framework contains (_by default_) a large sub-folder of optional _SKIN_ folders, which can bloat the overall zip. You can remove optional _SKIN_ folders from the `FrameworkKimmy/Skin` folder in the zip, leaving just `DEFAULT` + any others you deem relevant.

```
timegal.zip
|
├── singe
|   |
|   ├── timegal
|   |   ├── timegal.singe
|   |   └── *.*   [Other file and/or folder structures]
|   |
|   ├── Framework [Folder: As required]
```

Examine existing Zip ROM examples (_in this repo_) for further details on structure.

**Final Note:**  
Make sure that the zip file itself is named the same as the default `.singe` file within the game. _i.e._ `timegal.zip` holds `timegal.singe` as its main `.singe` startup file. Multi-Game Zipped ROMs are the exception here. Watch the `hypseus.log` for clues to issues when the game does not run as expected.

## Zipped ROM Packages

Some zipped ROM games are packaged with extra files, these will be bundled to enable easier downloads.

The filename will include the `rompack` phrase to indicate it is not the direct zipped ROM and should be examined for installation instructions within the first level of the compressed bundle file.

### Annotations:

```
'ML' signifies multi-language/audio
'MP' signifies multi-player
```

