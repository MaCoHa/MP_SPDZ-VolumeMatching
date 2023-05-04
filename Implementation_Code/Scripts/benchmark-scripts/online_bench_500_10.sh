#!/bin/sh
# usage: ./script.sh <parties: int>

cmd_mal_sham_100_10="./mascot-party.x -N %b -p %b -F VolumeMatching-100-10"
cmd_mal_sham_500_10="./mascot-party.x -N %b -p %b -F VolumeMatching-500-10"
cmd_mal_sham_100_3="./mascot-party.x -N %b -p %b -F VolumeMatching-100-3"
cmd_mal_sham_500_3="./mascot-party.x -N %b -p %b -F VolumeMatching-500-3"

folder="500-10"

p="$1"
i="0"

while [ "$i" -lt "$p" ]; do
    eval "$(printf "$cmd_mal_sham_500_10" "$p" "$i")" > "../Bachelor-DarkPoolMPC/Online_Benchmark/$folder/N$p/mascot-p_$i-$folder-N$p.txt" 2>&1 &
    i="$(( i + 1 ))"
done