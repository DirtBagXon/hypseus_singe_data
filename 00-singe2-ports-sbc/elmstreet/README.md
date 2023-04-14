## (Singe 2) Freddy

* Some violent scenes involved......
* Optional `-nolinear_scale`

Encode mp4 with:

    ffmpeg -i freddy.mp4 -an -qscale:v 4 -b:v 6000k -vf scale=1280:720 -codec:v mpeg2video freddy.m2v

    ffmpeg -i freddy.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k freddy.ogg
