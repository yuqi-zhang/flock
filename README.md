# flock

This repo contains demo information for the System Containers session at Flock 2017

## Host Setup

The demos *should* work on any f25/f26 atomic/cloud images.

Atomic image: https://getfedora.org/en/atomic/download/

Cloud image: https://alt.fedoraproject.org/cloud/

If you want to set up a simple one with vagrant + libvirt:

`dnf install vagrant`

`vagrant init fedora/26-cloud-base` or `vagrant init fedora/26-atomic-host`

`vagrant up --provider libvirt`

`vagrant ssh`

The atomic host variants comes pre-installed with everything you need for the demo.

On other hosts, `dnf -y install atomic docker`

## Demos

The individual folders contain instructions/commands for the demos. They contain:

1. etcd/flannel system container demos
2. docker as a system container (a.k.a container-engine)
3. cri-o as a system container
4. a hello-world container image to build with

## Links

The ProjectAtomic website:

http://www.projectatomic.io

The upstream repositories for the atomic cli and system container images are:

https://github.com/projectatomic/atomic

https://github.com/projectatomic/atomic-system-containers

The guideline and creation process can be found in the Fedora wiki:

https://fedoraproject.org/wiki/Container:Guidelines#System_Containers

https://fedoraproject.org/wiki/Container:System_Container

Alternative image build tools can be found at:

buildah: https://github.com/projectatomic/buildah

system-buildah: https://github.com/ashcrow/system-buildah

Some relevant blog posts on the subject:

Giuseppe's Introduction to System Containers: http://www.projectatomic.io/blog/2016/09/intro-to-system-containers/

Steve's Creating and Building System Containers: http://www.projectatomic.io/blog/2017/06/creating-system-containers/

Jason's articles regarding Kubernetes and System Containers:
http://www.projectatomic.io/blog/2017/05/system-containerized-kube/

http://www.projectatomic.io/blog/2017/05/testing-system-containerized-kubeadm/

http://www.projectatomic.io/blog/2017/08/new-centos-atomic-release-and-kubernetes-system-containers-now-available/

https://github.com/jasonbrooks/atomic-site/blob/52be987e328f8d52333e169698004cbf86718e76/source/blog/2017-08-22-running-kubernetes-on-fedora-atomic-26.html.md

