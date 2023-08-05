## (Singe 2) Crime Patrol HD

* Required `-overlay_set full`
* Recommended `-manymouse`
* Optional `-linear_scale`

Use available video for singe2-ports-gungames or encode mp4 with:

    ffmpeg -i Crime_Patrol.mp4 -vf tpad=stop_mode=clone:stop_duration=2 -qscale:v 6 -b:v 6000k -c:v mpeg2video crimepatrol.m2v
  
    ffmpeg -i Crime_Patrol.mp4 -ss 00:00:00.33 -vn -af afade=t=in:ss=0:st=0:d=1.1 -c:a libvorbis -ar 44100 -map a -b:a 160k crimepatrol.ogg
