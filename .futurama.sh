#!/bin/bash

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
bld=$'\e[1m'
rst=$'\e[0m'

cat << EOF
                         '. ___
                        __,' __'.                _..----....____
            __...--.''';.   ,.   ;''--..__     .'    ,-._    _.-'
      _..-''-------'   ''   ''   ''     O ''-''._   (,;') _,'
    ,'________________                          \'-._'-','
     '._              '''''''''''------...___   '-.._'-:
        '''--.._      ,.                     ''''--...__\-.
                '.--. '-'                       ____    |  |'
                  '. '.                       ,''''''.  ;  ;'
                    '._'.        __________   '.      \'__/'
                       '-:._____/______/___/____'.     \  '
                                   |       '._    '.    \.
                                   '._________'-.   '.   '.___
                                                 SSt  '------'
EOF