#!/bin/sh -l
echo `ls /`
echo `ls /github`
echo `ls -al /github/workspace`
cd /github/workspace && git checkout 
echo `ls /github/workspace`
make -C /github/workspace/tests COCOTB_RESULTS_FILE=dut_results.xml
echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
ls /github/workspace/tests


