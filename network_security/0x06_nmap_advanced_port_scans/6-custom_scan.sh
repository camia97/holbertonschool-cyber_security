#!/bin/bash
sudo nmap -sA --scanflags URGACKPSHRSTSYNFIN -p$2 $1 2>&1>/dev/null -oN custom_scan.txt
