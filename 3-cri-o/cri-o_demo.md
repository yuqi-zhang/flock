# cri-o as a system container

cri-o upstream: https://github.com/kubernetes-incubator/cri-o
This only provides the cri-o daemon process, and does not come with associated cli. However, the `crioctl` binary is provided in this folder if you wish to test with it.

### pull and install

`atomic pull --storage ostree jerzhang/cri-o`
`atomic install --system --system-package=no jerzhang/cri-o`

### test functionality

*Modified from the upstream tutorial: https://github.com/kubernetes-incubator/cri-o/blob/master/tutorial.md*

To set up cni networking, you need `go` installed. Then you can build the plugins with `setup_cni.sh`.

Creating a pod:

`POD_ID=$(./crioctl pod run --config ./sandbox_config.json)`

`./crioctl pod status --id $POD_ID`

Pulling an image and creating a container:

`./crioctl image pull redis:alpine`

`CONTAINER_ID=$(./crioctl ctr create --pod $POD_ID --config ./container_redis.json)`

`./crioctl ctr start --id $CONTAINER_ID`

`./crioctl ctr status --id $CONTAINER_ID`

Cleaning up:

`./crioctl ctr stop --id $CONTAINER_ID`
`./crioctl ctr remove --id $CONTAINER_ID`
`./crioctl pod stop --id $POD_ID`
`./crioctl pod remove --id $POD_ID`
