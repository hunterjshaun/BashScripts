#!/bin/bash 
echo "Enter username: "
read username
if id -u $username > /dev/null 2>&1; then
echo 'A user with that name already exist. Please try again. '
else
sudo useradd -m "$username" | echo "User created: $username"
sudo passwd $username
fi
