#!/bin/bash
cd /home/sheershoff/.cache/google-chrome/Default/Media\ Cache
# if tagged with mp3

while true
do
    echo "Press [CTRL+C] to stop.."
    sleep 1
    #cp -f `grep -l ID3 *` ~/Music/vk_auto
    cp -f * ~/Music/vk_auto
    du -hs ~/Music/vk_auto
    ls -l ~/Music/vk_auto | grep -c .
done


# or contains magic number for mp3
# grep -obUaPl "\xff\xfb" *