#!/bin/bash
clear
echo "USER PROGRAM CREATOR"
echo "-------------------------"
# Display the UID
echo "Your UID is ${UID}"
# Display the username
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"
echo "-------------------------"
# Display if the user is the root user or not.
if [[ "${UID}" -eq 0 ]]
then
	echo -n "Enter LOGIN name [ENTER]: "
	read loginName
	echo -n "Enter REAL name [ENTER]: "
	read realName
	echo -n "Enter PASSWORD [ENTER]: "
	read password
	echo "-------------------------"
    # If the USER is created, will do the check if its okay
	if useradd -m -p $(openssl passwd -1 ${password}) -s /bin/bash ${loginName} 2> /dev/null; then
		echo "User inserted succeeded!"
		if passwd -e ${loginName} 1> /dev/null; then
		echo "Password will change when login"
		echo "-------------------------"
		cat /etc/shadow | egrep $loginName
		echo "User is in the folder"
		machine=$(hostname)
		echo "-------------------------"
        # Show     Machine Name     Name            Password
		echo host: $machine user: $loginName pswd: $password
		else
		echo "Something went wrong"
		fi
	else
		echo "User inserted failed"
	fi
else
  echo 'You are not root.'
fi
