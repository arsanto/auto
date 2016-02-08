#!/bin/bash
# run: source curl -s https://github.com/arsanto/auto/raw/master/enter.sh
# sox auto

ffmpeg -loop 1 -framerate 2 -i filename.jpg -i filename.mp3 -c:v libx264 -preset fast -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p out.mkv

ffmpeg -i out.mkv -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=1.3[a]" -map "[v]" -map "[a]" output.mkv

youtube-upload --title="judul" output.mkv

rm -f filename.jpg
rm -f filename.mp3
rm -f output.mkv

