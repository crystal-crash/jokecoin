#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.jokecoincore/jokecoind.pid file instead
jokecoin_pid=$(<~/.jokecoincore/testnet3/jokecoind.pid)
sudo gdb -batch -ex "source debug.gdb" jokecoind ${jokecoin_pid}
