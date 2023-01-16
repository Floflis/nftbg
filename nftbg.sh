#!/bin/bash

#- task: blockchainid="1"
#- task: contract="0xd07dc4262bcdbf85190c01c996b4c06a461d2430"
#- task: tokenid="3164"

#- task: qrencode -s 6 -l L -o 'nftbg2.png' ""{"b":"$blockchainid","c":"$contract","i":"$tokenid"}"" && convert nftbg2.png    -resize 246x246  nftbg2.png

# https://www.cloudsavvyit.com/8382/how-to-create-qr-codes-from-the-linux-command-line/
qrencode -s 6 -l L -o 'nftbg2.png' '{"c":"0xd07dc4262bcdbf85190c01c996b4c06a461d2430","i":"3164","b":"1"}' && convert nftbg2.png    -resize 246x246  nftbg2.png
convert nftbg1.png nftbg2.png -background none +append nftbg.png

# may be useful https://stackoverflow.com/a/67427236/5623661, also insp on watermarkmaker

#convert -size 492x246 xc:none -draw "roundrectangle 0,0,492,246,15,15" nftbgmask.png
##convert nftbg.png -matte nftbgmask.png \
##-compose DstIn -composite nftbgtest.png

##infile="nftbg.png"
##size=`convert nftbgmask.png -format "%wx%h" info:`
##convert \
##\( "$infile" -resize $size -background white -gravity center -extent $size \) \
##nftbgmask.png \
##-compose copy_opacity -composite \
##-compose over -background black -flatten \
##png:result2.png

#convert nftbg.png -matte nftbgmask.png -background none \
#-compose over -background black -background none -flatten \
#png:result2.png
