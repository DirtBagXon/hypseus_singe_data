## (Singe 2) Who Shot Johnny Rock HD (Noir)?

* Required `-overlay_set full`
* Recommended `-manymouse`
* Optional `-nolinear_scale`


Use available video for singe2-ports-gungames or encode mp4 with:

    ffmpeg -i johnnyrockBW.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video johnnyrock.m2v

    ffmpeg -i johnnyrockBW.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k johnnyrock.ogg


The same metadata can be used on the encoded color version of the MP4, encode as above.
