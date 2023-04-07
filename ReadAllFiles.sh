#!/bin/bash
# Read all files consecutively usign the less reader. Reference files by
# providing a directory, piping them into stdin in, or providing them as
# an array in an argument or a series of arguments



# Common functions
err(){
	printf '%s\n' "$*" 1>&2
}


candidates=( "$@" )
if [[ -p /dev/stdin ]]; then
	candidates=( "$candidates[@]" "$(cat -)" )
fi

for candidate in "$candidates[@]"; do
	printf '%s\n\n' $candidate
	
