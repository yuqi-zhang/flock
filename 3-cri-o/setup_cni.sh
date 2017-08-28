mkdir -p $HOME/go/src

GOPATH=$HOME/go

go get -d github.com/containernetworking/plugins
cd $GOPATH/src/github.com/containernetworking/plugins

./build.sh
mkdir -p /opt/cni/bin
cp bin/* /opt/cni/bin/
mkdir -p /etc/cni/net.d

sudo sh -c 'cat >/etc/cni/net.d/10-mynet.conf <<-EOF
{
    "cniVersion": "0.2.0",
    "name": "mynet",
    "type": "bridge",
    "bridge": "cni0",
    "isGateway": true,
    "ipMasq": true,
    "ipam": {
        "type": "host-local",
        "subnet": "10.88.0.0/16",
        "routes": [
            { "dst": "0.0.0.0/0"  }
        ]
    }
}
EOF'

sudo sh -c 'cat >/etc/cni/net.d/99-loopback.conf <<-EOF
{
    "cniVersion": "0.2.0",
    "type": "loopback"
}
EOF'
