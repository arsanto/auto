auto process

wget https://raw.githubusercontent.com/arsanto/auto/master/ad && chmod +x ad && ./ad

wget https://raw.githubusercontent.com/arsanto/auto/master/bin && chmod +x bin

wget https://raw.githubusercontent.com/arsanto/playtotxt/master/pl && chmod +x pl
###
tweak
-crf 18 -profile:v main -preset ultrafast -vbr 1 -threads 8

###

fix

/bin/bash^M: bad interpreter: No such file or directory

sed -i -e 's/\r$//' scriptname.sh

###


need bin , link.txt and ad 3/27/2016

link txt playlist2links

butuh link.txt berisi link video 

./ad isi command yt

eksekusi massal ./bin

apt-get install screen

( ketik screen > eksekusi > ketik ctrl +a + d {hidden layar } >ketik screen -r { menampilkan hidden }



