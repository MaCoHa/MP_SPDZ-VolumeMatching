#!/bin/sh
p="$1"

./Fake-Offline.x 2
sleep 2
./Fake-Offline.x 3
sleep 2
./Fake-Offline.x 4
sleep 2
./Fake-Offline.x 5
sleep 2
./Fake-Offline.x 6
sleep 2
./Fake-Offline.x 7
sleep 3
./Fake-Offline.x 8
sleep 3
./Fake-Offline.x 9
sleep 4
./Fake-Offline.x 10
sleep 10
./Fake-Offline.x 20
sleep 10
./Fake-Offline.x 50
sleep 20
Scripts/setup-online.sh 2
sleep 5
Scripts/setup-online.sh 3
sleep 5
Scripts/setup-online.sh 4
sleep 5
Scripts/setup-online.sh 5
sleep 5
Scripts/setup-online.sh 6
sleep 10
Scripts/setup-online.sh 7
sleep 10
Scripts/setup-online.sh 8
sleep 10
Scripts/setup-online.sh 9
sleep 10
Scripts/setup-online.sh 10
sleep 20
Scripts/setup-online.sh 20
sleep 30
Scripts/setup-online.sh 50
sleep 120


sh online_bench_100_10.sh 2
sleep 3
sh online_bench_100_10.sh 3
sleep 3
sh online_bench_100_10.sh 4
sleep 3.5
sh online_bench_100_10.sh 5
sleep 4
sh online_bench_100_10.sh 6
sleep 5
sh online_bench_100_10.sh 7
sleep 15
sh online_bench_100_10.sh 8
sleep 25
sh online_bench_100_10.sh 9
sleep 40
sh online_bench_100_10.sh 10
sleep 50
sh online_bench_100_3.sh 20
sleep 200
sh online_bench_100_3.sh 50
sleep 270 

sh online_bench_500_10.sh 2
sleep 10
sh online_bench_500_10.sh 3
sleep 15
sh online_bench_500_10.sh 4
sleep 15
sh online_bench_500_10.sh 5
sleep 20
sh online_bench_500_10.sh 6
sleep 25
sh online_bench_500_10.sh 7
sleep 40
sh online_bench_500_10.sh 8
sleep 60
sh online_bench_500_10.sh 9
sleep 85
sh online_bench_500_10.sh 10
sleep 120
sh online_bench_500_3.sh 20
sleep 550
sh online_bench_500_3.sh 50
sleep 1300
cd /home/alexandersndergaard/Documents/6.th/Bachelor/Bachelor-DarkPoolMPC/Online_Benchmark
grep 'Time1 = ' -r > Bench_results_Time1_collection_$p
grep 'Time = ' -r > Bench_results_Time_collection_$p