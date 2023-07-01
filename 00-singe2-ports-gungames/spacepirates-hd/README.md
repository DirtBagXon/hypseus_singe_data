## (Singe 2) Space Pirates HD

Huge LUA fixes from Karis and includes previous missing scene selection level

* Recommended `-manymouse`
* Optional `-blend_sprites`
* Optional `-nolinear_scale`


Encode mp4 with:

    ffmpeg -i space.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video spacepirates.m2v

    ffmpeg -i space.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k spacepirates.ogg


[screenshot](spacepirates.png)
