#!/bin/bash
# run: source curl -s https://github.com/arsanto/auto/raw/master/enter.sh
# sox 
echo "pengabungan jpg + mp3"
ffmpeg -loop 1 -framerate 2 -i filename.jpg -i filename.mp3 -c:v libx264 -preset fast -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p out.mkv

echo "speed movie proses"
ffmpeg -i out.mkv -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=1.3[a]" -map "[v]" -map "[a]" output.mkv

echo "upload ke youtube"
youtube-upload --title="judul" output.mkv

rm -f filename.jpg
rm -f filename.mp3
rm -f output.mkv
rm -f out.mkv

rm -f output.mkv

echo "proses upload selesai silahkan ganti judul"
