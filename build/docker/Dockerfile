FROM golang:1.18-alpine3.16 as builder
WORKDIR /cmd
COPY ./cmd/go.mod .
COPY ./cmd/go.sum .
RUN go mod download
COPY ./cmd .
RUN go build -o svc

FROM alpine:3.16
WORKDIR /cmd
COPY --from=builder /cmd/svc .
ENTRYPOINT /cmd/svc
