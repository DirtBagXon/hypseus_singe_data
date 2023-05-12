# Hypseus Singe
  
## Singe 2: Future Boy Conan

This requires the Singe 2 extended version of video source:

```
ffmpeg -i conan_singe_2.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2 -codec:v mpeg2video conan.m2v

ffmpeg -i conan_singe_2.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k conan.ogg
```

FRAMEINFO

```
mediainfo --Inform='Video;%FrameCount%' conan.m2v
138534

mediainfo --Inform='Video;%Duration%' conan.m2v
5541360
```

## Starting game

_Example:_

`hypseus singe vldp -framefile singe/Future_Boy/Future_Boy.txt -script singe/Future_Boy/Future_Boy.singe`
