#!/usr/bin/env bash
echo "root:${ROOT_PASSWORD}" | chpasswd
exec /usr/sbin/sshd -D
