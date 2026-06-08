#!/bin/bash


<< comment
This is for and while loops
comment

<< task
$1 is your folder name

$2 star range
$3 End range


task

for (( dircount=$2 ; dircount<=$3 ; dircount++ ))
do
	mkdir $1$dircount
done

