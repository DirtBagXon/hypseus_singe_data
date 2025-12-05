# Hypseus Singe
## Support for Singe 1, 2 and Hypseus fan made LUA games

Hypseus Singe game demos on [Youtube](https://www.youtube.com/@DirtBagXon)

#### Firstly, ensure you are running the latest version of Hypseus Singe.

If you have older game content, ensure you update the existing lua and other data with files from  
this repository. Backup your existing data, then overwrite the metadata with repository files.  
You only require the video and audio files from your existing version (_see below_).

These games are updated frequently, ensure files are up-to-date.

Feel free to submit pull requests for any fixes or improvements.

### Downloading specific folders

To grab specific folders from this repo, this GitHub tool is highly recommended:

https://download-directory.github.io/

Paste the relevant repo _folder_ URL into the tool, it will allow you to download just that _folder_ content, as a zip.

# Version 2.11.x

From version **2.11.2**, Hypseus Singe supports zipped LUA _(zlua)_ ROMS.  
From version **2.11.3**, Hypseus Singe supports multi-game zipped ROMS with `-usealt`  
From version **2.11.6**, Hypseus Singe supports zipped ROMS using `Framework` _Lua LFS_.

### Zipped ROMs

**Note**: You do not need to unzip the ROM for usage in `hypseus` from version 2.11.2.  
A zipped ROM can be loaded, without decompressing, direct to the Singe `-script` or new `-zlua` argument.

A number of ROMS, with the zip container, will be released to a new folder in the repo [here](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms) . These can be used to replace all _.singe, .ttf, .wav, .png_ and other files within a Singe game folder. The only files required in addition to the `.zip` are the `.txt` _(framefile)_ and _video/audio_, _m2v/ogg_ files. So game installations can follow somewhat similar to Daphne game folder structures. Zipped games are no longer required to be within the _singe/_ subfolder. The required Singe path folder structure is held within the zip, not on disk.

A typical argument set using zip ROMS may begin:

```
hypseus singe vldp -zlua roms/timegal.zip -framefile vldp/timegal/timegal.txt ...
```

### Categorizations

Legacy ported games, which were created to run on lower powered single-board computer  
devices, such as the _Raspberry Pi_ and _RK3328_, used minimalist overlays. These will remain  
within the `00-singe2-ports-sbc` folder.  

**Note:** This format is deprecated in favor of the new _Minimal Overlay_ within the `00-singe2`  
games _Framework_ structure, which can now be contained in zip-rom format.

Games within `00-singe2-ports-gungames` are considered legacy.  
The hugely improved 2 Player versions, within [zip rom](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms), are now the maintained variants.

The `00-singe1` folder will contain original Daphne era Singe games that have received updates and bugfixes.  
These games now have many [zip rom](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms/00-Elder-Modernized-zip-rom/) counterparts.  

The `00-singe2` folder contains games using the new engine features with higher resolution assets and full overlays. These games also have [zip rom](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms/00-Framework-zip-rom/) counterparts. 

`00-non-qte` identifies any games that move away from the Dragon's Lair quick time event _(QTE)_ format.

`00-kimmy` identifies games that were specifically created using the newer, extended feature: _FrameworkKimmy_.  
**_Note_**: Earlier _Framework_ games can be easily ported to use the new framework via the Singe header files.  
**_Note_**: These games also have [zip rom](https://github.com/DirtBagXon/hypseus_singe_data/tree/master/00-zip-roms/00-Framework-zip-rom/) counterparts. 

`00-zip-roms` are detailed above.  

Download the latest complete repository via [**Releases**](https://github.com/DirtBagXon/hypseus_singe_data/releases) (*zip* or *tgz*).

## Using this repository and ported games

This repo does not contain Copyrighted &copy; material, purely fan made graphics, sounds and LUA scripts.

Data in this repository has been created from several _Fan Made_ sources, including Singe, Singe 2 and original  
creations specifically for Hypseus.

You should not **need** to alter any of the peripheral data in these subdirectories. However, these are\
customizable games. If you make improvements, please consider contributing back to the repository.

If you are porting Singe 2 games, the **only required step** is to obtain the video files from Singe 2  
for your required game and perform a video conversion as detailed **below** using *ffmpeg*. This can  
be performed on any PC including Windows: https://ffmpeg.org/download.html

Once you have the new **.m2v** and **.ogg** video and audio files: 

* ``FRAMEINFO.md`` is mostly deprecated (*however see below*).
* Move them into the relevant subdirectory from this repository.
* Install the subdirectory into your Hypseus Singe ROM folder location.
* Play the game.

## Instructions 

The files in this repository should be installed alongside the required game video (*m2v*) and audio (*ogg*) files.

Refer to the game framefile (*txt*) for video file layout structure.

This repository does not contain any game video or audio files. You are required to acquire these files from other sources, [archive.org](https://archive.org) may help.

Download the latest complete repository via [**Releases**](https://github.com/DirtBagXon/hypseus_singe_data/releases) (*zip* or *tgz*).

For Singe 2 video/audio recoding follow the instructions below:

### Recoding Singe 2 mp4 video files for Hypseus Singe

Singe 2 game files in this repository are based around various releases of Singe 2 games.

Check ``FRAMEINFO.md`` for the required video size for each game.\
``FRAMEINFO.md`` _is now deprecated but the following 'mediinfo' methods remain useful_.

Frame information from ``mediainfo`` will be provided for the Singe 2 video files in a file called ``FRAMEINFO.md`` in each folder:

    mediainfo --Inform='Video;%FrameCount%' <file>
    mediainfo --Inform='Video;%Duration%' <file>

``mediainfo`` can usually be installed in Linux via packaging, e.g.:

    sudo apt-get install mediainfo
    
In Windows: https://mediaarea.net/en/MediaInfo/Download/Windows

    View  -> Tree
    Debug -> Advanced Mode

Look for '*Duration*' and '*Frame Count*'

This should allow you to know the correct video files required.

### Conversion:

Some games use the very last frames of the source MP4 within the game LUA, _i.e._ have no _laserdisc_ style _lead-out_ time. The _VLDP_ can sometimes have issues accessing these final frames. The last frame of video can be duplicated, using `ffmpeg` filters, to create a _lead-out_ time and avoid _VLDP_ issues. This can be achieved with the `ffmpeg` **v**ideo **f**ilter: `-vf tpad=stop_mode=clone:stop_duration=2`

It is therefore advisable to add a _lead-out_ period by default.  
_Note:_ This will extend the total number of frames seen in `mediainfo`. 

    ffmpeg -i <original>.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video <game>.m2v

_Singe 2_ has an audio bug and audio is purposefully delayed in the original MP4, check with VLC. Use `-ss` to delay encode start to compensate:

    ffmpeg -i <original>.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k <game>.ogg

**e.g.**

    ffmpeg -i FaI.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video fireandice.m2v
    ffmpeg -i FaI.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k fireandice.ogg

If your device is struggling with the HD content, _this is likely on a RPi_, you can resize HD in one of these operations:

    ffmpeg -i FaI.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2,scale=1280:720 -codec:v mpeg2video fireandice.m2v

### Audio Delay (Singe 2 audio bug work-a-round)

If sound is out of sync, use `-ss` to delay audio encode start in `ms` *(hh:mm:ss.SSS)* on the orignal MP4:

    ffmpeg -i DL2E.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k dl2e.ogg

You can **fix** any existing `.ogg` files with delay easily, using:

    mv dl2e.ogg dl2e_delayed.ogg
    ffmpeg -i dl2e_delayed.ogg -ss 00:00:00.330 -c copy dl2e.ogg

