auto process

wget https://raw.githubusercontent.com/arsanto/auto/master/ad && chmod +x ad && ./ad
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


