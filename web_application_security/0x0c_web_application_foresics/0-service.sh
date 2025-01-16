#!/bin/bash

# Mostrar el servicio pam_unix(sshd:auth) y los eventos asociados
echo "34806 pam_unix(sshd:auth):"
grep "pam_unix(sshd:auth)" "auth.txt" | \
  sed 's/.*pam_unix(sshd:auth): \(.*\)/\1/' | \
  sort | uniq -c | while read count event; do
    printf "  %-6s %s\n" "$count" "$event"
done

# Mostrar el servicio pam_unix(sshd:session) y los eventos asociados
echo "  200 pam_unix(sshd:session):"
grep "pam_unix(sshd:session)" "auth.txt" | \
  sed 's/.*pam_unix(sshd:session): \(.*\)/\1/' | \
  sort | uniq -c | while read count event; do
    printf "  %-6s %s\n" "$count" "$event"
done

