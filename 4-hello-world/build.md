# Building a system image

`docker build -t "${NAME}:${TAG}" ./image`

`atomic pull --storage ostree docker:${NAME}:${TAG}`

## Testing other features

### install a container with custom variables

`atomic install --system --set RECEIVER=flock hello-world`

`systemctl start hello-world`

`curl localhost:8081`

### create another container off the same image

`atomic install --system --set PORT=8082 --name=hello-world-2 hello-world`

`systemctl start hello-world-2`

`curl localhost:8082`

### update that container to have a different greeting

`atomic containers update --set RECEIVER=Hyannis hello-world-2`

`curl localhost:8082`

### rollback that container to previous settings

`atomic containers rollback hello-world-2`
