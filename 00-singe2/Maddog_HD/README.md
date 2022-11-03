## (Singe 2) Maddog McCree  HD

* Required `-overlay_set full`
* Recommended `-manymouse`
* Optional `-nolinear_scale`

Supports mutiple HUD overlays via `maddog.cfg`

    dip_HUD = 1      - Standard HUD
    dip_HUD = 2      - Compact HUD


Use available video for singe2-ports-gungames or encode mp4 with:

    ffmpeg  -i maddog.mp4  -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 4 -b:v 6000k -c:v mpeg2video maddog.m2v

    ffmpeg -i maddog.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k maddog.ogg
