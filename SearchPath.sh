#!/usr/bin/env bash

###############################################################################
declare  -i  DEBUG_MODE=0 

declare      name="${1:-\*}"

find ${PATH//:/\/ } -name $name 2>/dev/null
