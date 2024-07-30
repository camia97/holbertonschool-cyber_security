#!/bin/bash
shasum -a 256 --check | echo "$1"
