#!/bin/bash
test_pass="$1"
test_pass="${test_pass#'{xor}'}"
decode_test_pass=$(echo "$test_pass" | base64 -d)

decode_test_pass_xor=""
for((i = 0; i < ${#decode_test_pass}; i++)); do
	char="${decode_test_pass:$i:1}"
	ascii_value=$(printf "%d" "'$char")
	xor_res=$(( ascii_value ^ 95 ))
	decode_test_pass_xor+="$(printf "$(printf '\\x%x' $xor_res)")"
done

echo -e "$decode_test_pass_xor"
