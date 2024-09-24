#!/bin/bash

# Validate right arguments
if [ $# -ne 3 ]; then
  echo "Uso: $0 NEW_HOST TARGET_URL FORM_DATA"
  exit 1
fi

# Var arguments
NEW_HOST="$1"
TARGET_URL="$2"
FORM_DATA="$3"

# Use curl to send the new headline change
curl -X POST "$TARGET_URL" \
  -H "Host: $NEW_HOST" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data "$FORM_DATA"

