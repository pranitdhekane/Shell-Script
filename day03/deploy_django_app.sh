#!/bin/bash


<< task

deploy django app

handel the errors


task


code_clone() {
echo "Cloning django app in server..."
git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirments() {

echo "Installing dependancies..."
sudo apt update -y
sudo chown $USER /var/run/docker.sock
sudo apt install docker.io nginx docker-compose -y
}

required_restarts(){
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl start nginx
sudo systemctl enable nginx
#sudo systemctl restart docker

}

deploy(){

docker build -t notes-app .
docker compose up -d

}

echo "********************  Deployment Started  ********************"

if ! code_clone; then
	echo "The code directory already exist"
	cd django-notes-app
fi


if ! install_requirments; then
	echo "Installation failed"
	exit 1
fi
if ! required_restarts; then
	echo "System fault Identified"
	exit 1
fi

if ! deploy; then
	echo "Deployment failed"
	echo "Sendig mail to admin"
	exit 1
fi



echo "****************** Deployment Done ****************************"
