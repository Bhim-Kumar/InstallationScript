#!/bin/bash
#Install Docker before installing minikube and restart the server.
sudo apt update
sudo apt install -y curl wget apt-transport-https
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
minikube start --driver=docker
minikube status
echo""minikube installed successfully"
