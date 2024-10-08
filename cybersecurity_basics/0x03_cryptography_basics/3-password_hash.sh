#!/bin/bash
echo -n $1 | openssl sha512 >> 3_hash.txt
