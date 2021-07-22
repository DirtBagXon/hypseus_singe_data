### Note:

As we are trimming this video (see README.md), this can have a couple of different outcomes:

i.e. ``00:45:29`` vs ``00:45:30``

    mediainfo --Inform='Video;%FrameCount%' titanae.m2v 
    65431

    mediainfo --Inform='Video;%FrameCount%' titanae.m2v
    65455

Duration:

    mediainfo --Inform='Video;%Duration%' titanae.m2v
    2729018

Ensure you are using the https://archive.org/details/singe-titan-ae as a base mp4
