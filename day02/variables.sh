#!/bin/bash

# This is Jetha lal Ki duniya 

<< Comment
Anything
Written 
here can not be execute
This is multiline comment
Comment

# This variable

Name="Pranit"
# To pass this variable use $your_variable_name to execute the variavble
# To execute any shell command usr $(pass any command in this brackert )
echo "Name is $Name, and date is $(date)"


# To give Input from user

echo "Enter your Name"

read username
echo "you Enterd $username"

<< comment  
This is used to pass the arguments when executing shell script. Characters are saperated by single space
eg ./variables.sh pranit saurabh

variable.sh is the 0 th argument 
pranit is the first argument
saurabh is the second argument
comment

echo "The characters in $0 are :  $1 $2"


