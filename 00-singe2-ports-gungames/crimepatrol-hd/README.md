## (Singe 2) Crime Patrol HD

* Recommended `-manymouse`
* Optional `-blend_sprites`
* Optional `-nolinear_scale`

Supports mutiple HUD overlays via `crimepatrol.cfg`

    dip_HUD = 1      - Standard HUD
    dip_HUD = 2      - Alternate HUD


Encode mp4 with:

    ffmpeg -i Crime_Patrol.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 6 -b:v 6000k -c:v mpeg2video crimepatrol.m2v
  
    ffmpeg -i Crime_Patrol.mp4 -ss 00:00:00.33 -vn -af afade=t=in:ss=0:st=0:d=1.1 -c:a libvorbis -ar 44100 -map a -b:a 160k crimepatrol.ogg
