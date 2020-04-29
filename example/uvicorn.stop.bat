#!/bin/bash
if lsof -Pi :8000 -sTCP:LISTEN -t >/dev/null ; then
    echo "running"
    fuser -k 8000/tcp
else
    echo "not running"
fi
