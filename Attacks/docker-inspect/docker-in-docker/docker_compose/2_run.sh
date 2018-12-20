#!/bin/sh

docker-compose up --build

docker run --rm -it --security-opt "apparmor=inspect_attacker" --pid=host --cap-add SYS_ADMIN --cap-add SYS_PTRACE attack nsenter -t 1 -m /bin/bash


