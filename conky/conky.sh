#!/bin/bash

# Kill Conky If Running
test -z "`pgrep conky`" || killall -9 conky

# The directory of conkyrcs
conky_dir="/home/moses/.config/conky/conkyrc"

# The command for start conkys
START="conky -d -c"

# The Conkys
sleep 0.5
$START $conky_dir/cpu
sleep 0.2
$START $conky_dir/time
sleep 0.2
$START $conky_dir/mem
sleep 0.2
$START $conky_dir/disk
sleep 0.2
$START $conky_dir/net
