#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.dashcore/jokecoind.pid file instead
dash_pid=$(<~/.dashcore/testnet3/jokecoind.pid)
sudo gdb -batch -ex "source debug.gdb" jokecoind ${dash_pid}
