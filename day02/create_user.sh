#!/bin/bash
#To read the input from user and store in variable username
read -p "Enter username: " username
# To printing Enter usename
echo "You enterd $username"
#To add user in system
sudo useradd -m $username
# Message after adding user
echo "New user added"
