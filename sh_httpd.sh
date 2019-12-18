#!/usr/bin/env bash
REPONSE="HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n${2:-"Hello!"}\r\n"
while { echo -en "$REPONSE"; } | nc -l "${1:-58080}";do
echo "[Notice]Client Connected."
done
