FROM golang:latest
RUN apt-get install git -y
RUN go install golang.org/dl/gotip@latest
RUN gotip download
WORKDIR /
ENTRYPOINT [ "/go/bin/gotip" ]