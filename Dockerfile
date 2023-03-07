FROM alpine

RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY bin/element-node_linux-amd64 /usr/local/bin/
RUN chmod +x /usr/local/bin/element-node_linux-amd64

CMD /usr/local/bin/element-node_linux-amd64 config ; /usr/local/bin/element-node_linux-amd64