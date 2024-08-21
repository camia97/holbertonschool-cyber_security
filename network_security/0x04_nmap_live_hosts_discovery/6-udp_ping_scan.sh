#!/bin/bash
sudo nmap -PU22,80,443 -sn $1
