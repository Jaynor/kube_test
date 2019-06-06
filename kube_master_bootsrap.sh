#! /bin/bash

#Reference for the cidr https://stackoverflow.com/questions/48984659/understanding-kubeadm-init-command-for-flannel
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
#update kubeconfig file
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

