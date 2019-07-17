#!/bin/sh
# build binary

echo "start compiling..."
go build
curl fs.haodai.net/soft/uploadapi -F file=@gotty-logs -F truncate=yes
cksum gotty-logs
