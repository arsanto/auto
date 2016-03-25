#!/bin/bash
# run: source curl -s https://github.com/arsanto/auto/raw/master/enter.sh

ffmpeg -loop 1 -framerate 2 -i filename.jpg -i filename.mp3 -c:v libx264 -preset fast -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p out.mkv

ffmpeg -i out.mkv -filter:v "setpts=0.50*PTS" -filter:a "atempo=1.25" -strict experimental output.mp4

youtube-upload --title="judul" output.mp4

rm -f *.jpg
rm -f *.mp3
rm -f *.mov
rm -f *.mp4
rm -f *.mkv

echo "proses upload selesai silahkan ganti judul"
