#!/bin/bash
cat /dev/urandom | tr -dc '[:alnum:]' | fold -w $1 | head -c $1
