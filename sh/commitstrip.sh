#!/bin/sh
echo "http://www.commitstrip.com/en/?" |
wget -O- -i- |
hxnormalize -x |
hxselect -i div.excerpt a:first-child |
lynx -stdin -dump | grep -o "http:.*" > humour.txt;
xdg-open "$( head -1 humour.txt )"
