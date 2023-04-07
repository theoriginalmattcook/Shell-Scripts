#!/bin/bash
#
# Repeat a character n times


char=${1:--}
count=${2:-79}

printf -- '%*.s\n' "$count" | tr ' ' "$char"

