#!/bin/bash

# Asegúrate de que se pasa un argumento
if [ "$#" -ne 1 ]; then
  echo "Uso: $0 {xor}HASH"
  exit 1
fi

# Extraer el hash del argumento
pass="$1"
pass="${pass#'{xor}'}"

# Decodificar la cadena base64
decoded_pass=$(echo "$pass" | base64 --decode)

decoded_pass_xor=""
# Realizar la operación XOR
for ((i = 0; i < ${#decoded_pass}; i++)); do
    char="${decoded_pass:$i:1}"
    ascii_value=$(printf "%d" "'$char")
    xor_result=$(( ascii_value ^ 95 ))
    decoded_pass_xor+="$(printf "$(printf '\\x%x' $xor_result)")"
done

# Mostrar el resultado
echo -e "$decoded_pass_xor"

