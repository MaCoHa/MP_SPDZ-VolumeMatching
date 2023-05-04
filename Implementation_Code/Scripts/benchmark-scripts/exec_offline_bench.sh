#!/bin/sh
# usage: ./script.sh <parties: int>

sh offline_bench_100_10.sh 2
sleep 1
sh offline_bench_100_10.sh 3
sleep 1
sh offline_bench_100_10.sh 4
sleep 1
sh offline_bench_100_10.sh 5
sleep 1
sh offline_bench_100_10.sh 6
sleep 1
sh offline_bench_100_10.sh 7
sleep 1
sh offline_bench_100_10.sh 8
sleep 1
sh offline_bench_100_10.sh 9
sleep 1
sh offline_bench_100_10.sh 10
sleep 2
sh offline_bench_100_3.sh 20
sleep 3

sh offline_bench_500_10.sh 2
sleep 1
sh offline_bench_500_10.sh 3
sleep 1
sh offline_bench_500_10.sh 4
sleep 1
sh offline_bench_500_10.sh 5
sleep 1
sh offline_bench_500_10.sh 6
sleep 1
sh offline_bench_500_10.sh 7
sleep 1
sh offline_bench_500_10.sh 8
sleep 1
sh offline_bench_500_10.sh 9
sleep 1
sh offline_bench_500_10.sh 10
sleep 2
sh offline_bench_500_3.sh 20
sleep 3