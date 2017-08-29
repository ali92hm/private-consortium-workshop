#!/bin/bash

geth --datadir ./data --rpc --mine --minerthreads 2 --ipcpath ${HOME}/Library/Ethereum/geth.ipc --nodiscover --networkid 8222017 console
