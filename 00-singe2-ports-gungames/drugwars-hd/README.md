## (Singe 2) Crime Patrol 2: Drug Wars HD

* Required `-overlay_set oversize`
* Recommended `-manymouse`
* Optional `-blend_sprites`
* Optional `-nolinear_scale`

Supports mutiple HUD overlays via `drugwars.cfg`

    dip_HUD = 1      - Standard HUD
    dip_HUD = 2      - Alternate HUD


Encode mp4 with:

    ffmpeg -i drugwars.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 6 -b:v 6000k -c:v mpeg2video drugwars.m2v

    ffmpeg -i drugwars.mp4 -ss 00:00:00.33 -vn -c:a libvorbis -ar 44100 -map a -b:a 160k drugwars.ogg
