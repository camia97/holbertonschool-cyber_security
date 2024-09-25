#!/bin/bash

# Verifica que se pase un argumento
if [ "$#" -ne 1 ]; then
  echo "Uso: $0 {xor}HASH"
  exit 1
fi

# Extrae el hash del argumento
pass="$1"
pass="${pass#'{xor}'}"

# Decodifica la cadena base64
decoded_pass=$(echo -n "$pass" | base64 -d 2>/dev/null)

# Verifica si la decodificación fue exitosa
if [ $? -ne 0 ]; then
  echo "Decodificación fallida"
  exit 1
fi

decoded_pass_xor=""
# Realiza la operación XOR
for ((i = 0; i < ${#decoded_pass}; i++)); do
    char="${decoded_pass:$i:1}"
    ascii_value=$(printf "%d" "'$char")
    xor_result=$(( ascii_value ^ 95 ))
    decoded_pass_xor+=$(printf "\\$(printf '%03o' "$xor_result")")
done

# Muestra el resultado sin nuevos espacios o líneas
echo -n "$decoded_pass_xor"

