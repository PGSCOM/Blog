#!/bin/bash
# filepath: ./generate_opengraph_bg.sh
# ./generate_opengraph_bg.sh ./assets/logomax.png ./assets/opengraph.png
if [ "$#" -lt 2 ]; then
    echo "Uso: $0 imagen_entrada imagen_salida"
    exit 1
fi

convert -size 1200x630 xc:white \
    $(for i in $(seq -- 77 400 1200); do echo "( $1 -resize 64x64 -rotate 155 ) -geometry +${i}-32 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- -1 300 1200); do echo "( $1 -resize 64x64 -rotate 70 ) -geometry +${i}+62 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 24 370 1200); do echo "( $1 -resize 64x64 -rotate -108 ) -geometry +${i}+120 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- -280 400 1200); do echo "( $1 -resize 64x64 -rotate -244 ) -geometry +${i}+205 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- -2 370 1200); do echo "( $1 -resize 64x64 -rotate -52 ) -geometry +${i}+290 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 77 400 1200); do echo "( $1 -resize 64x64 ) -geometry +${i}+360 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- -1 300 1200); do echo "( $1 -resize 64x64 -rotate -244 ) -geometry +${i}+430 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 24 800 1200); do echo "( $1 -resize 64x64 -rotate 70 ) -geometry +${i}+510 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- -280 400 1200); do echo "( $1 -resize 64x64 -rotate 155 ) -geometry +${i}+580 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 280 400 1200); do echo "( $1 -resize 32x32 -rotate 35 ) -geometry +${i}+10 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 150 300 1200); do echo "( $1 -resize 32x32 -rotate 200 ) -geometry +${i}+60 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 200 350 1200); do echo "( $1 -resize 32x32 -rotate 240 ) -geometry +${i}+120 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 20 220 1200); do echo "( $1 -resize 32x32 -rotate 160 ) -geometry +${i}+200 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 90 270 1200); do echo "( $1 -resize 32x32 -rotate 80 ) -geometry +${i}+240 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 150 420 1200); do echo "( $1 -resize 32x32 -rotate 300 ) -geometry +${i}+310 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 280 370 1200); do echo "( $1 -resize 32x32 -rotate 61 ) -geometry +${i}+370 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 160 320 1200); do echo "( $1 -resize 32x32 -rotate 2196 ) -geometry +${i}+440 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 220 270 1200); do echo "( $1 -resize 32x32 -rotate 6185 ) -geometry +${i}+520 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 310 290 1200); do echo "( $1 -resize 32x32 -rotate 984 ) -geometry +${i}+550 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    $(for i in $(seq -- 20 330 1200); do echo "( $1 -resize 32x32 -rotate 8946 ) -geometry +${i}+590 -channel A -evaluate multiply 0.1 +channel -composite "; done) \
    \( $1 -resize 96x96 \) -geometry +16+16 -composite \
    -fill "#4682B4" -draw "rectangle 0,614 1200,630" \
    "$2"