#!/bin/bash
ho="$(md5sum index.html | cut -d" " -f1)"
#mkdir .b
cp index.html .b/i.html
while :; do
	ha="$(md5sum index.html 2>/dev/null | cut -d" " -f1)";
#	echo $ha;
	sleep 0.3;
	if [ "$ha" != "$ho" ]; then
		echo "[+] Recuperando arquivo original"
		cp .b/i.html ./index.html;
	fi;
done
