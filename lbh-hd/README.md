## (Singe 2) The Last Bounty Hunter HD

* Required `-oversize_overlay`
* Recommended `-manymouse`
* Optional `-blend_sprites`
* Optional `-nolinear_scale`

Supports mutiple HUD overlays via `lbh.cfg`

    dip_HUD = 1      - Standard HUD
    dip_HUD = 2      - Compact HUD


Encode mp4 with:

    ffmpeg -i lbh.mp4 -vf tpad=stop_mode=clone:stop_duration=4,crop=1600:1080:0:0 -an -qscale:v 4 -b:v 6000k -codec:v mpeg2video lbh.m2v

    ffmpeg -i lbh.mp4 -ss 00:00:00.330  -vn -c:a libvorbis -ar 44100 -map a -b:a 160k lbh.ogg
