#!/bin/bash
echo -n $1 | md5sum | awk '{print $1}' >> 2_hash.txt
