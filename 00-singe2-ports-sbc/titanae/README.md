## Titan AE (Full game and levels)

* This is the Singe 2 (_v3.31c_) version of TitanAE
* This version included all levels on the upgraded VLDP
* This game requires Hypseus Singe version **2.8.0**
* Optional `-nolinear_scale`

**Note:** This is the full version of TitanAE and therefore requires the latest mp4 from Singe 2 (_v3.31c_) to re-encode

Encode mp4 with:

    ffmpeg -i Titan_AE169.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video titanae.m2v

    ffmpeg -i Titan_AE169.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k titanae.ogg

