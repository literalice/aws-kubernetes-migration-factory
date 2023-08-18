FROM public.ecr.aws/docker/library/golang:1.21.0-bookworm as builder

ARG CGO_ENABLED=0
ARG GOOS=linux
ARG GOARCH=amd64

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod tidy && go mod download

COPY . /app

CMD go build -o ./bin/kmf && chmod +x ./bin/kmf
