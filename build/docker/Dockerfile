FROM golang:1.18-alpine3.16 as builder
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY *.go ./

RUN go build -o /docker-msa-hw1

CMD ["/docker-msa-hw1"]
