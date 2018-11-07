FROM golang:alpine

ENV PACKER_DEV=1
RUN apk add --update git bash openssl
RUN go get github.com/mitchellh/gox
RUN go get github.com/hashicorp/packer
WORKDIR $GOPATH/src/github.com/hashicorp/packer
RUN /bin/bash scripts/build.sh

FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/gordon-scalesec/cis-ubuntu-packer.git

COPY ./account.json /root/.gcloud/account.json
COPY ./ /app
COPY --from=0 /bin/ /bin/
RUN ["/bin/packer", "build", "./packer.json"]


