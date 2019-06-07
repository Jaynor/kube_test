#! /bin/bash

sudo kubeadm join $some_ip:6443 --token $some_token --discovery-token-ca-cert-hash $some_hash
#verify that all nodes have successfully joined the cluster
kubectl get nodes
