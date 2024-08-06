#!/bin/bash
whois $1 | awk -F fs '/Registrant/ {print $1} /Admin/ {print $1,$2} /Tech/ {print}' > holberton.csv
 
