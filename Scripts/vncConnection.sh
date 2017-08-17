#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Setup vnc connection"
	echo " "
	echo "Enter local display number to use (i.e. 230)"
	echo "            must not be in use by another user"
	echo " "
	echo "Outputs search output file for remote port number to log into"
	echo " "
	echo "Login to this lxplus server from a local port to the output port"
	echo "            ssh -L 5900:localhost:6130 rheitz@lxplus0002.cern.ch"
	echo "            local port 5900 remote port 6130 on lxplus0002"
	echo " "
	echo "Last step is to set display on lxplus to input display number chosen"
	echo "            export DISPLAY=localhost:230.0 #for 230 chosen"
	echo "            export DISPLAY=:230.0 #for 230 chosen"
	echo " "
	echo "Now login to vncview using the correct remote port"
else
    display=$1
    vncserver :$display -localhost -name robert -geometry 2560x1600 | awk '{if ($1 ~ /Log/) print $3}'
fi