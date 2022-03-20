## (Singe 2) Ninja Hayate Enhanced

* This is the Singe 2 version of Ninja Hayate
* Optional `-nolinear_scale`

Additional `*-oversize.singe` files are provided for use with `-oversize_overlay`.

Contains Arcade (_hayate-hd.singe_) and PSX (_hayate-psx.singe_) version LUA files.


Encode mp4 with:

    ffmpeg -i Hayate.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video hayate.m2v

    ffmpeg -i Hayate.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k hayate.ogg


[screenshot](hayate.png)
