## (Singe 2) Dragon's Lair II: Time Warp Enhanced (dl2e)

Details of DL2E can be found here: http://www.dragons-lair-project.com/tech/enhancements/dl2e.asp

* This is the Singe 2 (_v3.31c_) version of Dragon's Lair II (dl2e) ROM
* This game requires Hypseus Singe version **2.6.21**
* Optional `-nolinear_scale`

**Note:** This is the second version of DL2e and therefore requires the latest mp4 from Singe 2 (_v3.31c_) to re-encode

Encode mp4 with:

    ffmpeg -i DL2e.mp4 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video dl2e.m2v

    ffmpeg -i DL2e.mp4 -ss 00:00:00.330 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k dl2e.ogg

[screenshot](dl2e.png)
