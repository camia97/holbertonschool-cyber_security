#!/bin/bash
sudo nmap -sW --exclude-ports $3 -p$2 $1
