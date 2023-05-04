# run_mpc.sh

Used for running and benchmarking a single mp-spdz mpc program on a single machine.

## How to run

From 'Bachelor-DarkPoolMPC/Implementation_Code/Scripts' run the following command:

```./run_mpc.sh <program-name> [options]```

or (depending on machine)

```bash run_mpc.sh <program-name> [options]```

Where 'program-name' is a .mpc file (without writing .mpc) located in 'Bachelor-DarkPoolMPC/Implementation_Code/Server'.


### options
```-b [offline|online]``` benchmark

Run the program with benchmarking of either the offline or online phase.

```-c``` cleanup

Remove every new or copied file touched by the script.

```-l <log-file>``` log

Log output of main thread to the given 'log-file'.

```-n <n-parties>``` multi party (default: '2')

Run the program on 'n-parties' multiple threads.

```-p <protocol>``` protocol (default: 'mascot')

Use the specified 'protocol' to run the program.
