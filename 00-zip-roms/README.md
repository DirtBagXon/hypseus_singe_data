# Hypseus Singe

## Zipped Singe ROMS (Require v2.11.2)

These `.zip` files can be used to replace existing Singe folder structures.

The _zip_ name relates to the current _game_ folder structure name.

As detailed on the main repo page, zipped ROM files are not bound to the _singe/_ subfolder and can be placed in any convenient location. The _.txt_ framefile is still required to locate video and audio data, however, as with the _.zip_, this is no longer bound to the _singe/_ subfolder.

A typical argument set using zip ROMS may begin:

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

## Zipped ROM Packages

Some zipped ROM games are packaged with extra files, these will be bundled to enable easier downloads.

The filename will include the `rompack` phrase to indicate it is not the direct zipped ROM and should be examined for installation instructions within the first level of the compressed bundle file.
