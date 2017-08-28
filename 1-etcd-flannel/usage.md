# Running etcd/flannel as System Containers


### Etcd

`atomic pull --storage ostree registry.fedoraproject.org/f26/etcd`
`atomic install --system registry.fedoraproject.org/f26/etcd`
`systemctl start etcd`
`runc exec etcd etcdctl set /atomic.io/network/config '{"Network":"172.17.0.0/16"}'`

### Flannel

`atomic pull --storage ostree registry.fedoraproject.org/f26/flannel`
`atomic install --system registry.fedoraproject.org/f26/flannel`
`systemctl start flannel`

### Checking status

`atomic images list`
`atomic containers list`
`systemctl status etcd`
`systemctl status flannel`

### Uninstalling

`atomic uninstall etcd`
`atomic uninstall flannel`

