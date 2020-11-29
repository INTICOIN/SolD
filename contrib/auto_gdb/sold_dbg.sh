#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.soldcore/soldd.pid file instead
sold_pid=$(<~/.soldcore/testnet3/soldd.pid)
sudo gdb -batch -ex "source debug.gdb" soldd ${sold_pid}
