## (Singe 2) Scrat - No Time for Nuts by BLADESCATER (BugFix)

* This is short and fast paced Singe 2 mini game
* Blueray movie short can be used as source (See FRAMEINFO.md)

Encode mp4 with:

    ffmpeg -i Scrat\ No\ Time\ For\ Nuts\ 2006\ 3Li\ BluRay\ 1080p.mkv -an -qscale:v 4 -b:v 6000k -vf scale=1280:720 -codec:v mpeg2video scrat.m2v

    ffmpeg -i Scrat\ No\ Time\ For\ Nuts\ 2006\ 3Li\ BluRay\ 1080p.mkv -ac 2 -af "pan=stereo|FL=FC+0.30*FL+0.30*BL|FR=FC+0.30*FR+0.30*BR" -filter:a "volume=10dB" -vn -c:a libvorbis -ar 44100 -map a -b:a 160k scrat.ogg


[screenshot](screenshot.png)
