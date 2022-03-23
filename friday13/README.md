## (Singe 2) Friday the 13th

* This game requires Hypseus Singe version **2.8.0**
* Some violent scenes involved......
* Optional `-nolinear_scale`

Encode mp4 with:

    ffmpeg -i f13.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video f13.m2v

    ffmpeg -i f13.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k f13.ogg
