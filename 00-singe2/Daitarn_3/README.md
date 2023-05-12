# Hypseus Singe
  
## Singe 2: Daitarn 3

This requires the Singe 2 extended version of video source:

```
ffmpeg -i daitarn_singe_2.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video daitarn3.m2v

ffmpeg -i daitarn_singe_2.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k daitarn3.ogg
```

FRAMEINFO

```
mediainfo --Inform='Video;%FrameCount%' daitarn3.m2v
138678

mediainfo --Inform='Video;%Duration%' daitarn3.m2v
5547120
```

## Starting game

_Example:_

`hypseus singe vldp -framefile singe/Daitarn_3/Daitarn_3.txt -script singe/Daitarn_3/Daitarn_3.singe`
