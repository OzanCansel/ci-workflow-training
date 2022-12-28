#!/bin/bash

echo "Test"
which sort
which printf
function version_greater_equal() {
 printf '%s\n%s\n' "$2" "$1" | sort --check=quiet --version-sort
}
HZ_VERSION=4.2.3
version_greater_equal ${HZ_VERSION} 4.2.0
echo $?

sleep 10
LAST_UPDATED=$(date -r . "+%s")
CURRENT_DATE=$(date +%s)

ELAPSED_SEC=$(( ${LAST_UPDATED} - ${CURRENT_DATE} ))

echo ${ELAPSED_SEC}

echo "Number of cpus : " $(getconf _NPROCESSORS_ONLN)
