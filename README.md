# Setting up a local geth private consortium

This is a workshop and walks you through setting up a private consortium of geth clients with three members. You can read the [offical documents](https://github.com/ethereum/go-ethereum/wiki/Private-network) on ethereun private networks here.

## Dependencies

### Download Go-Ethereum (geth)

* You can [download installers](https://ethereum.github.io/go-ethereum/downloads/) or install via [package managers](https://ethereum.github.io/go-ethereum/install/)
* Make sure you have `geth` in your command by running `which geth` command.

### Download Ethereum Wallet
* Download [Ethereum Wallet](https://github.com/ethereum/mist/releases) for your operating system

## Node 1: miner

To run a blockchain (ethereum) network, you need some nodes to mine blocks called miner nodes. You can read more about mining [here](https://github.com/ethereum/wiki/wiki/Mining).

### Initialize the genesis block
Open a new terminal window and run the flowing command. 

```
cd geth-consortium-workshop
geth --datadir ./node-1 init genesis.json
```

By running that command, you have turned the content of `genesis.json` to the hash for the first block. You should see the following output to the one below.

### Start GoEthereum with mining enabled

```
geth --datadir ./node-1 --mine --minerthreads 2 --networkid 8222017
```

Now you are running a geth node with mining enabled. At this point your geth client is generating the [DAG](https://github.com/ethereum/wiki/wiki/Mining#ethash-dag)

## Node 2: transaction node with rpc enabled
Open a **new** terminal window and run the following commands:

```
# Navigate to the cloned project
cd geth-consortium-workshop

# Initialize the genesis block
geth --datadir ./node-2 init genesis.json

# Windows
geth --datadir ./node-2 --rpc --port 30302 --networkid 8222017

# Mac
geth --datadir ./node-2 --rpc --port 30302 --networkid 8222017 --ipcpath ${HOME}/Library/Ethereum/geth.ipc
```

### Attaching the Ethereum or Mist wallet
Now you can open the Ethereum or mist wallet. The wallet by defult will look for an `IPC` socket open by geth to connect to attach to. If there is no `IPC` socket in the expected path (`//IPC/` on windows and `${HOME}/Library/Ethereum/geth.ipc` on mac) the wallet will run its own `geth` process to connect to test netwok or main network.

## Node 3: transaction node
Open a **new** terminal window and run the following commands:

```
# Navigate to the cloned project
cd geth-consortium-workshop

# Initialize the genesis block
geth --datadir ./node-3 init genesis.json

# Run geth
geth --datadir ./node-3 --port 30303 --networkid 8222017
```


## Provided Accounts:

* Main account
    * Address: `0xae57095f12fb7e760532eea08486153497f42430`
    * Password: no password (just press enter)

* Account 1
    * Address: `0x62daa5f6974331eebab3970e19598f0e279cfb85`
    * Password: `2017`

