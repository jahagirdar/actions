#!/bin/sh -l

make -C /github/workspace/tests COCOTB_RESULTS_FILE=dut_results.xml
echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
ls /github/workspace/tests


