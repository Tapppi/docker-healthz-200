#!/usr/bin/env bash

GOOS=linux GOARCH=386 go build ./server.go
docker build -t tapppi/healthz-200 .
