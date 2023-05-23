#!/bin/bash

#check if Docker is installed
echo "after exiting the ubuntu container it will automatically be removed"
if ! command -v docker &> /dev/null; then
	echo "Docker is not installed. Please install Docker and try again."
	exit 1
fi

#Pull the ubuntu image
sudo docker pull ubuntu

#Create and start the container
sudo docker run --name my-ubuntu-container -it ubuntu

#Clean up (optional)

sudo docker rm my-ubuntu-container

