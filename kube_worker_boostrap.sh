#! /bin/bash

#In Kubemaster node, output from $kubeadm token create --print-join-command 
sudo kubeadm join 172.31.100.115:6443 --token 4mujoq.8ouwzx1di2kp2t5l --discovery-token-ca-cert-hash sha256:ed6443e1c492dfb638f251ece5663b348c3c0c6b3d1b82fc393d9707a1a3abb7
#verify that all nodes have successfully joined the cluster
kubectl get nodes
