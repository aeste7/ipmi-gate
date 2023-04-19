#!/bin/bash
for i
do
	if [ ${i:0:6}  = "--user" ] 
	then
		username=${i:7}
	elif [ ${i:0:10} = "--password" ]
	then
		password=${i:11}
	fi
done
useradd $username -d /home/ftp_folder -m -s /bin/false
echo $password | passwd --stdin $username > /dev/null
echo "OK --id=$username --username=$username --password=$password"