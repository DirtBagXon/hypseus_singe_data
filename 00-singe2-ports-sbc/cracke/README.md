## (Singe 2) Cracke

Encode mp4 with:

    ffmpeg -i CRACKÉ\ -\ UPSET\ STOMACH\ _\ Cartoon\ Animation\ _\ Compilation-UEBAiTkxCIo.mkv -an -qscale:v 4 -b:v 6000k -vf tpad=stop_mode=clone:stop_duration=2,scale=1280:720 -codec:v mpeg2video cracke.m2v

    ffmpeg -i CRACKÉ\ -\ UPSET\ STOMACH\ _\ Cartoon\ Animation\ _\ Compilation-UEBAiTkxCIo.mkv -vn -c:a libvorbis -ar 44100 -map a -b:a 160k cracke.ogg
