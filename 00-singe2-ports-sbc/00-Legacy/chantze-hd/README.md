## (Singe 2) Chantze's/Triad Stone

* This is the Singe 2 version of Chantze's/Triad Stone
* This game requires Hypseus Singe version **2.6.21**
* Optional `-nolinear_scale`

Contains Chantze's Stone (_chantze-hd.singe_) and Triad Stone (_triad-hd.singe_) versions in LUA files.


Encode mp4 with:

    ffmpeg -i Chantze.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video chantze.m2v

    ffmpeg -i Chantze.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k chantze.ogg

[screenshot](chantze.png)
