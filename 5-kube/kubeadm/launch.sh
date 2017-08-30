#!/bin/bash

export KUBELET_KUBECONFIG_ARGS="--kubeconfig=/etc/kubernetes/kubelet.conf --require-kubeconfig=true"
export KUBELET_SYSTEM_PODS_ARGS='--pod-manifest-path=/etc/kubernetes/manifests --allow-privileged=true --cgroup-driver=systemd --cgroups-per-qos=false --enforce-node-allocatable='
export KUBELET_NETWORK_ARGS="--network-plugin=cni --cni-conf-dir=/etc/cni/net.d --cni-bin-dir=/usr/libexec/cni"
export KUBELET_DNS_ARGS="--cluster-dns=10.96.0.10 --cluster-domain=cluster.local"
export KUBELET_AUTHZ_ARGS="--authorization-mode=Webhook --client-ca-file=/etc/kubernetes/pki/ca.crt"

exec /usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_SYSTEM_PODS_ARGS $KUBELET_NETWORK_ARGS $KUBELET_DNS_ARGS $KUBELET_AUTHZ_ARGS $KUBELET_EXTRA_ARGS --containerized
