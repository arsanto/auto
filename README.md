auto process

wget https://raw.githubusercontent.com/arsanto/auto/master/y && chmod +x y && ./y
###
tweak
-crf 18 -profile:v main -preset ultrafast -vbr 1 -threads 8

###

fix

/bin/bash^M: bad interpreter: No such file or directory

sed -i -e 's/\r$//' scriptname.sh

###


need bin and  vido 3/27/2016
