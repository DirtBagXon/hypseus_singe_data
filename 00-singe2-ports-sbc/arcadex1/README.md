## (Singe 2) Arcade Xperience Vol.1 (Rev2)

**Azureus** - **Ikibanchi** - **Ruine**

Encode mp4 with:

    ffmpeg -i Arcade_Xperience_Vol1.mp4 -qscale:v 4 -b:v 6000k -codec:v mpeg2video -vf tpad=stop_mode=clone:stop_duration=2,scale=1280:720 arcadex1.m2v

    ffmpeg -i Arcade_Xperience_Vol1.mp4 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k arcadex1.ogg
