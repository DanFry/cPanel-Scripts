#!/bin/bash
echo Please wait while finding and improving all images, This can take a while!
yum install optipng jpegoptim -y -q
# You can remove this line above once you have installed install jpegoptim and optipng.
find /home/ -type f  -name "*.jpeg" -o -name "*.jpg" -exec jpegoptim -s {} \;
find /home/ -type f  -name "*.png" -exec optipng -o5 {} \;
echo All jpg, jpeg and png files have been optimized.
