
Recode Singe 2 video files for Singe 1
--------------------------------------

    ffmpeg -i timetraveler.mp4 -an -codec:v mpeg2video -b 4182k timetraveler.m2v
    ffmpeg -i timetraveler.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k timetraveler.ogg

    ffmpeg -i Timegal.mp4 -an -codec:v mpeg2video -b 4182k timegal.m2v
    ffmpeg -i Timegal.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k timegal.ogg


