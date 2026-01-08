#!/bin/bash

# Download your split files from Telegram
wget "PASTE_LINK_1"
wget "PASTE_LINK_2"
wget "PASTE_LINK_3"
# ... add all your links here

# Rebuild the zip
cat video.zip.* > video.zip
unzip video.zip

while true
do
  ffmpeg -re -stream_loop -1 -i video.mp4 \
  -c:v copy -c:a copy \
  -f flv "rtmp://a.rtmp.youtube.com/live2/$YT" \
  -f flv "rtmps://live-api-s.facebook.com:443/rtmp/$FB"
done
