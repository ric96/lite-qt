#!/bin/bash

./fw_load.sh start
sleep 0.1
lxterminal --command="/bin/bash -c 'cat /sys/kernel/debug/remoteproc/remoteproc0/trace0; read'" &
sleep 5
python3 main.py
