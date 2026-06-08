#!/bin/bash

function create_dir () {


mkdir dir1


}

if ! create_dir; then
	echo "The code being exited as the directoruy already exists"
	exit 1
fi
echo "This should not work beacouse the code is interrputed"
