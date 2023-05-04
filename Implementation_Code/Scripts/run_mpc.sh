#!/bin/bash
#ARGUMENTS
#get program name
PROGRAMME="$1"
MPC="$1.mpc"
shift

#set default variables
BENCHMARK=""
CLEANUP=false
LOG_FILE="/dev/null"
N_PARTIES=2
PROTOCOL="mascot"

#get arguments from flags
while getopts "b:cl:n:p" FLAG ; do
  case "$FLAG" in
    b)  BENCHMARK=$OPTARG;;
    c)  CLEANUP=true;;
    l)  LOG_FILE=$(pwd)/$OPTARG;;
    n)  N_PARTIES=$OPTARG;;
    p)  PROTOCOL=$OPTARG;;
    *)  exit;;
  esac
done

#get all not flagged arguments
shift $((OPTIND - 1))

#SETUP

#copying program into mp-spdz and compiling it
echo "copying '$MPC' into ../../mp-spdz-0.3.5/Programs/Source/$MPC"
cd ..
cp "./Server/$MPC" "../../mp-spdz-0.3.5/Programs/Source/$MPC" || exit
cd ../../mp-spdz-0.3.5 || exit
./compile.py "$PROGRAMME"

#setting up benchmarking options
if [ "$BENCHMARK" = "" ] ; then
  Scripts/setup-ssl.sh "$N_PARTIES"
  PROTOCOL="$PROTOCOL-party.x"
elif [ "$BENCHMARK" = "offline" ]; then
  echo "OFFLINE BENCHMARKING NOT SUPPORTED YET"
  exit
  #PROTOCOL="$PROTOCOL-offline.x"
elif [ "$BENCHMARK" = "online" ]; then
  Scripts/setup-online.sh "$N_PARTIES"
  PROTOCOL="Player-Online.x"
else
  echo "'-b' only recognises options 'offline' or 'online'"
  exit
fi

#EXECUTION
echo "Spawning $N_PARTIES threads of $PROTOCOL"
#only first threat will print output
./"$PROTOCOL" -N "$N_PARTIES" 0 "$PROGRAMME" 2>&1 | tee "$LOG_FILE" &
#spawning n-2 separate threads
for pid in $(seq 1 $(("$N_PARTIES" - 2)) ) ; do
  ./"$PROTOCOL" -N "$N_PARTIES" "$pid" "$PROGRAMME" > /dev/null 2>&1 &
done
#final thread on main thread
./"$PROTOCOL" -N "$N_PARTIES" $(("$N_PARTIES" - 1)) "$PROGRAMME" > /dev/null 2>&1

#cleanup copied files
if [ $CLEANUP = true ] ; then
  echo "removing '$MPC' from ../../mp-spdz-0.3.5/Programs/Source/$MPC"
  rm "./Programs/Source/$MPC"
fi

#change compile and run -> is compiled
#PARSE ARGS

#
#if [ "$N_PARTIES" = 1 ]
#then
#  Scripts/compile-run.py -E "$PROTOCOL" "$PROGRAMME" 2>&1 | tee "$LOG_FILE"
#fi


