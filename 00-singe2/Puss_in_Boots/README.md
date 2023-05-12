# Hypseus Singe
  
## Singe 2: Puss in Boots

This requires the Singe 2 extended version of video source:

```
ffmpeg -i Puss_in_Boots_english.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video Puss_in_Boots.m2v

ffmpeg -i Puss_in_Boots_english.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k Puss_in_Boots.ogg
```

FRAMEINFO

```
mediainfo --Inform='Video;%FrameCount%' Puss_in_Boots.m2v
84541

mediainfo --Inform='Video;%Duration%' Puss_in_Boots.m2v
3526064
```

## Starting game

_Example:_

`hypseus singe vldp -framefile singe/Puss_in_Boots/Puss_in_Boots.txt -script singe/Puss_in_Boots/Puss_in_Boots.singe`
