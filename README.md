
# Install Engine
https://docs.docker.com/engine/install/debian/

# Insall Runtime
https://kubernetes.io/docs/setup/production-environment/container-runtimes/

# Install kubeadm
https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/


sudo apt-get update
sudo apt-get install -y kubelet=1.23.0-00 kubeadm=1.23.0-00 kubectl=1.23.0-00
sudo apt-mark hold kubelet kubeadm kubectl

# Enable kubeconfig
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubeadm join 10.0.0.10:6443 --token g1mbu9.msj6yp0jmt3v7b9b \
        --discovery-token-ca-cert-hash sha256:361d4c9aeac86d42129595018972829d8080b325c45f3ed9dcf80c5e8f5eddec 