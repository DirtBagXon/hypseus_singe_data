## (Singe 2) Astroboy


Encode mp4 with:

    ffmpeg -i Astroboy.mp4 -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2,scale=1280:720 -codec:v mpeg2video astroboy.m2v

    ffmpeg -i Astroboy.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k astroboy.ogg
