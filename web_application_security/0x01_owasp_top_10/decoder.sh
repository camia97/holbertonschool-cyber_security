#!/bin/bash

# Decodifica la contraseña hash de Base64
password_hash="Dz58DxMnBQOJy9EUM5V0O1FGHc=="
decoded_password_hash=$(echo "$password_hash" | base64 -d)

# Aplica la operación XOR
decoded_password_xor=""
for ((i = 0; i < ${#decoded_password_hash}; i++)); do
    char="${decoded_password_hash:$i:1}"
    ascii_value=$(printf "%d" "'$char")
    xor_result=$(( ascii_value ^ 95 )) # Cambia 95 si utilizas otro valor
    decoded_password_xor+="$(printf "$(printf '\\x%x' $xor_result)")"
done

echo -e "Password: $decoded_password_xor"

