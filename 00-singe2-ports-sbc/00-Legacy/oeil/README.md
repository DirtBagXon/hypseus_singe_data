## (Singe 2) oeil-pour-oeil by BLADESCATER

* This is short and fast paced Singe 2 mini game
* Optional `-nolinear_scale`

Encode mp4 with:

    ffmpeg -i oeil-pour-oeil.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video oeil.m2v

    ffmpeg -i oeil-pour-oeil.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k oeil.ogg
