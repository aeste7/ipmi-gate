#!/bin/bash
for i
do
	string=${i}
	if [ ${string:0:4} = "--id" ]
	then
	username=${string:5}
	fi
done
userdel $username
echo "OK"