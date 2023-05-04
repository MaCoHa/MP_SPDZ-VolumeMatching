#!/bin/bash
echo hi
cmd_100_10="./offline_bench.sh %b"

p="$1"
i="0"

while [ "$i" -lt "$p" ]; do
    "$cmd_100_10" "$p" &
    i="$(( i + 1 ))"
done