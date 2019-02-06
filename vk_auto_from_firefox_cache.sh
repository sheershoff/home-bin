#!/bin/bash
cd /home/sheershoff/.cache/mozilla/firefox/col1l7hu.default/cache2/entries
# if tagged with mp3

while true
do
    echo "Press [CTRL+C] to stop.."
    sleep 30
    date
    echo "In cache:"
    ls -lia | grep -c .
    cp -f `grep -laU ID3 *` ~/Music/vk_auto
    cp -f `grep -obUaPl "\xff\xfb" *` ~/Music/vk_auto
    echo "Saved:"
    du -hs ~/Music/vk_auto
    ls -l ~/Music/vk_auto | grep -c .
done


# or contains magic number for mp3
# grep -obUaPl "\xff\xfb" *