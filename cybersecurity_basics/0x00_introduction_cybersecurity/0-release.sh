#!/bin/bash
cat /etc/os-release | egrep "ID=kali" | cut -d = -f2

