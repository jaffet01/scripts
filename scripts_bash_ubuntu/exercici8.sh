#!/bin/bash
echo "introduce tu nota,(numero entre 0 y 10"
read nota

case $nota in
	[0-2])
		echo "Tu nota es D"
		;;
	[3-4])
                echo "Tu nota es C-"
                ;;
	[5-6])
                echo "Tu nota es C+"
                ;;
	[7-8])
                echo "Tu nota es B"
                ;;
	[9-10])
                echo "Tu nota es A"
                ;;
esac


