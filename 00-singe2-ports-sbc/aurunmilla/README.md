## (Singe 2) Esh's Aurunmilla

* This is the Singe 2 game simulation of Esh's Aurunmilla
* Game named `aurunmilla` to distinguish from _Daphne_ `esh`

Encode mp4 with:

    ffmpeg -i Esh.mp4 -vf tpad=stop_mode=clone:stop_duration=4,pad=width=1264:height=960:x=1:y=0:color=black -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video aurunmilla.m2v

    ffmpeg -i Esh.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k aurunmilla.ogg


[screenshot](aurunmilla.png)

