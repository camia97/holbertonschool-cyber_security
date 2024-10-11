#!/bin/bash
sudo useradd -m -s /bin/bash $1
echo "$1:$2" | chpasswd
