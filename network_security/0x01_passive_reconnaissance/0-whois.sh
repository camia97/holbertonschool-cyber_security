#!/bin/bash
whois $1 | awk -FS': ' '/^Registrant/ || /^Admin/ || /^Tech/ {print $1, $2}' > holberton.csv
