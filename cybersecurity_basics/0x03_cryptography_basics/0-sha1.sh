#!/bin/bash
echo -n $1 | sha1sum | awk '{print $1}'
