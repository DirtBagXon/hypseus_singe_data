## (Singe 2) Dragon's Lair Television Show

* This is the Singe 2 game based on Dragon's Lair TV show
* This release has several fixes for bugs found in the Singe 2 version
* The game has an epic **4 hours** of video....
* This game requires Hypseus Singe version **2.8.0**
* Optional `-nolinear_scale`
* Optional `-bootsilent`

Grab the MP4 (7z) from archive.org: https://archive.org/download/singe-dl-tv

Encode mp4 with:

    ffmpeg -i dlair.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video dltv.m2v

    ffmpeg -i dlair.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k dltv.ogg


[screenshot](dltv.png)

