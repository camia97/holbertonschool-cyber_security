#!/bin/bash
sudo nmap -sA --scanflags URGACKPSHRSTSYNFIN -p$2 $1 -oX d >/dev/null -oN custom_scan.txt
