#!/bin/bash
# run: source curl -s https://github.com/arsanto/auto/raw/master/enter.sh

rm -rf *.jpg
rm -rf *.mp3
rm -rf *.mp4
rm -rf *.mkv
rm -rf *.wav
rm -rf *.webm

address=$1
regex='v=(.*)'
if [[ $address =~ $regex ]]; then
video_id=${BASH_REMATCH[1]}
video_id=$(echo $video_id | cut -d'&' -f1)
video_title="$(youtube-dl --get-title $address)"
youtube-dl $address --extract-audio --audio-format wav --youtube-skip-dash-manifest --write-thumbnail --xattrs --output "filename.mp4"
 else
    echo "Sorry but the system encountered a problem."
 fi
 
#sox filename.wav name.wav pitch 100 norm 

sox filename.wav -r 8k --channels 1 --norm -b 16 name.wav

ffmpeg -loop 1 -framerate 2 -i filename.jpg -i name.wav -c:v libx264 -preset fast -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p out.mkv

#ffmpeg -i out.mkv -filter:v "setpts=1.25*PTS" -filter:a "atempo=1.25" -strict experimental output.mp4

ffmpeg -i out.mkv -filter_complex "setpts=PTS/0.78;atempo=0.78" -strict -2 output.mp4


youtube-upload --title="judul" output.mp4


echo "proses upload selesai silahkan ganti judul"
