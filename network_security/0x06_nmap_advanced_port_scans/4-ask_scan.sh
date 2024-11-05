#!/bin/bash
sudo nmap -sA -T1000 --reason -p$2 $1
