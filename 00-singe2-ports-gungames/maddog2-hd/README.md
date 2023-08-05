## (Singe 2) Maddog II: The Lost Gold HD

* Recommended `-manymouse`
* Recommended `-blend_sprites`
* Optional `-linear_scale`

Encode mp4 with:

    ffmpeg -i maddog2.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video maddog2.m2v

    ffmpeg -i maddog2.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k maddog2.ogg


For reduced bitrate and <2Gb use:

    ffmpeg -i maddog2.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -an -b:v 8192k -codec:v mpeg2video maddog2.m2v
