# Hypseus Singe
  
## Singe 2: Dragon Trainer

This requires the Singe 2 extended version of video source:

```
ffmpeg -i dragon_english_singe_2.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video dragontrainer.m2v

ffmpeg -i dragon_english_singe_2.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k dragontrainer.m2v.ogg
```

FRAMEINFO

```
mediainfo --Inform='Video;%FrameCount%' dragontrainer.m2v
136982

mediainfo --Inform='Video;%Duration%' dragontrainer.m2v
5713291
```

## Starting game

_Example:_

`hypseus singe vldp -framefile singe/DragonTrainer/DragonTrainer.txt -script singe/DragonTrainer/DragonTrainer.singe`
