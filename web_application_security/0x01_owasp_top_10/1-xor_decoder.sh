#!/bin/bash

# Verify that an argument is pass
if [ -z "$1" ]; then
    echo "Uso: ./1-xor_decoder.sh {xor}encoded_string"
    exit 1
fi

# Remove '{xor}'
encoded_pass="${1#'{xor}'}"

# Base64 decode y remove null bytes
decoded_pass=$(echo "$encoded_pass" | base64 -d 2>/dev/null | tr -d '\0')

# XOR with the WebSphere key (0x5f o 95)
decoded_pass_xor=""
for (( i=0; i<${#decoded_pass}; i++ )); do
    char="${decoded_pass:$i:1}"
    ascii_value=$(printf "%d" "'$char")
    xor_result=$(( ascii_value ^ 95 ))

    decoded_pass_xor+="$(printf '\\x%x' "$xor_result")"
done

# Show the password decoded
echo -e "$decoded_pass_xor"

