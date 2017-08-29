# Docker/container-engine as a system container

Note that this only provides the docker *daemon*, and not the associated cli. While the container can run by itself, it is recommended to have the docker cli on the host if you wish to test functionality.

### pull/install

`atomic pull --storage ostree registry.fedoraproject.org/f25/docker`

OR

`atomic pull --storage ostree registry.fedoraproject.org/f25/container-engine`

`atomic install --system --system-package=no ${IMAGE}`

`systemctl start ${NAME}`

