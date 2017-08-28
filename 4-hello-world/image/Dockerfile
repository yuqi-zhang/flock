FROM registry.fedoraproject.org/fedora:26

LABEL Name="hello-world" \
      Version="1" \
      atomic.type='system' \
      Architecture="x86_64"

COPY run.sh greet.sh /usr/bin/
COPY manifest.json service.template config.json.template tmpfiles.template /exports/

RUN dnf install -y nmap-ncat vim && dnf clean all
RUN mkdir -p /exports/hostfs/usr/bin && cp /usr/bin/greet.sh /exports/hostfs/usr/bin/hello-world-greet

