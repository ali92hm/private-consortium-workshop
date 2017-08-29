# Connecting to a remote blockchain network

## Dependencies

### Download Go-Ethereum

* You can [download installers](https://ethereum.github.io/go-ethereum/downloads/)
* Or install via [package managers](https://ethereum.github.io/go-ethereum/install/)

### Download Ethereum Waller
* [Ethereum Wallet](https://www.ethereum.org/)

## Running geth

### Initialize the genesis block

* Navigate to the folder blockchain folder and run the following command.

* `geth --datadir ./data init genesis.json`

### Start GoEthereum with mining enabled

#### Windows
* `geth --datadir ./data --rpc --nodiscover --networkid 8222017`

#### Mac
* `geth --datadir ./data --rpc --ipcpath ${HOME}/Library/Ethereum/geth.ipc --nodiscover --networkid 8222017`

#### Open Ethereum Wallet

### Provided Account:

* Address: `0xae57095f12fb7e760532eea08486153497f42430`
* Password: empty string (just press enter)

### Network id:
* `8222017`

### Genesis file
```
{
    "config": {
        "chainId": 8222017,
        "homesteadBlock": 0,
        "eip155Block": 0,
        "eip158Block": 0,
        "eip150Block": 0
    },
    "difficulty": "0x20000",
    "gasLimit": "0x493E00",
    "alloc": {
        "0xae57095f12fb7e760532eea08486153497f42430": {
            "balance": "1000000000000000000000000"
        }
    }
}
```

### How to mine:
* Add `--mine` to when running geth
