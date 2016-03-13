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
youtube-dl $address --extract-audio --audio-format mp3 --write-thumbnail --audio-quality 9 --metadata-from-title "%(upload_date)s" --add-metadata --output "filename.%(ext)s"
 else
    echo "Sorry but the system encountered a problem."
 fi
 
ffmpeg -loop 1 -framerate 2 -i filename.jpg -i filename.mp3 -c:v libx264 -preset fast -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p out.mkv

#ffmpeg -i out.mkv -filter:v "setpts=1.25*PTS" -filter:a "atempo=1.25" -strict experimental output.mp4

ffmpeg -i out.mkv -metadata title="Titlul cântecului" -metadata artist="Artist nou" -metadata date="2015" -metadata copyright="auu" -metadata composer="btt" -metadata network="spydi" -metadata performer="dono" -acodec copy -vcodec copy output.mkv

youtube-upload --title="$video_title" output.mkv

echo "proses upload selesai silahkan ganti judul"
