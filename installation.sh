#!/bin/bash

###1. install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

###2 Install docker
sudo apt-get update && \
    sudo apt-get install docker.io -y

###3. install minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

###4  install  helm chart
curl -s https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
helm init

####5  create chart
helm create mychart

