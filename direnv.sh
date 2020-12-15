#!/usr/bin/env dash
set -efu
rm -rf direnv
git clone --depth 1 https://github.com/direnv/direnv
cd direnv 
_V=$(git rev-parse --short HEAD)
GOOS=linux CGO_ENABLED=0 go build -trimpath -o "../direnv.${_V}.exe" -ldflags '-s -w -extldflags "-static"'