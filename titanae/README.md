## Titan AE Specific encoding (Removing (Demo) Level 5)

This will decrease the frame number to Singe 1 status and become playable:

    ffmpeg -i Titan_AE.mp4 -t 00:45:29 -an -qscale:v 4 -b 6000k -codec:v mpeg2video titanae.m2v

    ffmpeg -i Titan_AE.mp4 -t 00:45:30 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k titanae.ogg

    mediainfo --Inform='Video;%FrameCount%' titanae.m2v
    65431
