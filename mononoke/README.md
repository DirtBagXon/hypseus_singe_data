## (Singe 2) Princess Mononoke

* This is the Singe 2 version of Princess Mononoke
* This game requires Hypseus Singe version **2.8.0**
* Optional `-nolinear_scale`

Encode mp4 with:

    ffmpeg -i Mononoke.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video mononoke.m2v

    ffmpeg -i Mononoke.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k mononoke.ogg
