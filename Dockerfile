FROM docker:17.06.0-ce

RUN apk update && \
    apk add --no-cache bash curl ca-certificates && \
    curl -o /usr/local/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/v1.7.2/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    mkdir $HOME/.kube
