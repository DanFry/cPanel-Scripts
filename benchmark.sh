#!bin/bash
# Benchmark System Speed, incuding disk i/o.

# Show diskio Stats
iostat

# Show vmstats
vmstat

# if installed, show historical load/io info
sar | head -n 10

# Start HDD Speed Test.
dd if=/dev/zero of=test bs=64k count=16k conv=fdatasync
rm -f test

# FreeVPS Full System Benchmark
wget freevps.us/downloads/bench.sh
chmod 700 bench.sh
./bench.sh
