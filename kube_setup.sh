#! /bin/bash
# install kubeadm, kubelet, kubectl for Kubernetes cluster

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat << EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
# install specific version of kubeadm kubelet kubectl
sudo apt-get install -y kubelet=1.12.7-00 kubeadm=1.12.7-00 kubectl=1.12.7-00
# hold on update 
sudo apt-mark hold kubelet kubeadm kubectl