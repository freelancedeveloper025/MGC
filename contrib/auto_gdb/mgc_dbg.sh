#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.mgccore/mgcd.pid file instead
export LC_ALL=C

mgc_pid=$(<~/.mgccore/testnet3/mgcd.pid)
sudo gdb -batch -ex "source debug.gdb" mgcd ${mgc_pid}
