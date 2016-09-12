#!/bin/sh 
weather_url=$(awk -F "=" '/weather_url/ {print $2}' weather.ini)
timeout=$(awk -F "=" '/timeout/ {print $2}s' weather.ini)
while true;
do
	content='<dsvcdsfvffdvdf.s<div id="left">+24<div>sdcvds<div><div>'
	#$(wget $weather_url -q -O -)
	echo $content > file.html
	echo "Downloaded content!"
	echo $content | sed -e 's/.*<div id="left">\(.*\)<\/div>.*	/\1/'
	sleep $timeout
done
