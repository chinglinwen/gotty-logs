#!/bin/sh
# build binary

echo "start compiling..."
cd cmd
go build -o gotty-cmd1
curl fs.haodai.net/soft/uploadapi -F file=@gotty-cmd1 -F truncate=yes
cksum gotty-cmd1
cd ..

go build -o gotty-logs1
curl fs.haodai.net/soft/uploadapi -F file=@gotty-logs1 -F truncate=yes
cksum gotty-logs1
