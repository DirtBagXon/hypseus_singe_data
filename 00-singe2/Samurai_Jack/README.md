# Hypseus Singe
  
## Singe 2: Samurai Jack

This requires the Singe 2 extended version of video source:

```
ffmpeg -i jack_english_version.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video jack.m2v

ffmpeg -i jack_english_version.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k jack.ogg
```

FRAMEINFO

```
mediainfo --Inform='Video;%FrameCount%' jack.m2v
154732

mediainfo --Inform='Video;%Duration%' jack.m2v
6453614
```

## Starting game

_Example:_

`hypseus singe vldp -framefile singe/Samurai_Jack/Samurai_Jack.txt -script singe/Samurai_Jack/Samurai_Jack.singe`
