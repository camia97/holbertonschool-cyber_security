#!/bin/bash
sudo nmap -sA --host-timeout 1000 --reason -p$2 $1
