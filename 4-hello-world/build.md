# Building a system image

`docker build -t "${NAME}:${TAG}" ./image`
`atomic pull --storage ostree docker:${NAME}:${TAG}`
