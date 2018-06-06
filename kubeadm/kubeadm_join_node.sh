#!/bin/bash
## Pre-configure
./01_pre_check_and_configure.sh

# Install Docker
./02_install_docker.sh

# Install kubelet kubeadm kubectl
./03_install_kubenetes.sh

# Pull kubernetes images
./04_pull_kubernetes_images_from_aliyun.sh


# Join kubernetes node
export KUBE_REPO_PREFIX="registry.cn-shenzhen.aliyuncs.com/cookcodeblog"
export KUBE_ETCD_IMAGE="registry.cn-shenzhen.aliyuncs.com/cookcodeblog/etcd-amd64:3.1.12"


# Put "kubeadm join" here from "kubeadm init" output
# Example: kubeadm join 192.168.37.101:6443 --token mmxy0q.sjqca7zrzzj7czft --discovery-token-ca-cert-hash sha256:099421bf9b3c58e4e041e816ba6477477474614a17eca7f5d240eb733e7476bb	

