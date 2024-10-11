#!/bin/bash
echo "$1 All=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$1-nopasswd > /dev/null
