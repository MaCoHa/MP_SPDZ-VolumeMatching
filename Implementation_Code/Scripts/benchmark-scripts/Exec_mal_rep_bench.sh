#!/bin/sh
# usage: ./script.sh <parties: int>

cmd_mal_rep_ring="./%b %b VolumeMatching-%b"
proto="$1"
prog="$2"


i="0"

while [ "$i" -lt "3" ]; do
    eval "$(printf "$cmd_mal_rep_ring" "$proto" "$i" "$prog")" > "/home/alexandersndergaard/Documents/6.th/Bachelor/Bachelor-DarkPoolMPC/Benchmark_results/Benchmarks_rep_mal/$proto-$prog-p$i" 2>&1 &
    i="$(( i + 1 ))"
done