#!/bin/bash
hashcat -m 0 -a 1 --stdout "$1" "$2"
