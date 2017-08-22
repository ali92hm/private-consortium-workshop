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


## Remote Blockchain

### Dashboard URL:
* [http://cma.southcentralus.cloudapp.azure.com:3000/](http://cma.southcentralus.cloudapp.azure.com:3000/)

### Provided Account:

* Address: `0x6ca393ad5e8c30e14f40c91af76bf7d79ebcbce2`
* Password: empty string (just press enter)

### List of enodes:
* [http://cma.southcentralus.cloudapp.azure.com:3001/enodes](http://cma.southcentralus.cloudapp.azure.com:3001/enodes)

```
[
"enode://83ccaa811432e00c44b89d91b37225fe1c82c4eeb8c04beabf5be7320c850d0907f2e6c065fa09ccf4ead4ed8855e46a4745a1fe0044b70e5da6e193d74006ef@52.237.37.190:30303",
"enode://5453ccac5a74eb27eb31ade0b4c83de4b0ef70bac40e16ab209939c6574ca90a8f6605d24c6d2b5a253af2ead4f1753bcaa3ecad4ad3966d2d0e3f99ff80f3d1@52.237.37.190:30303",
"enode://48a875ed749ceb27017f27e120daff3d8bfd5c77d66ce0123ef2d16d8151cb87fca1714f6f2926bf7f3878f5a3129c2a4bfd6d9de3cd0ce78810caa62a5dce6f@52.237.37.190:30303"
]
```

### Network id:
* `8222017`

### Genesis file
```
{
    "config": {
        "chainId": 8222017
    },
    "difficulty": "0x20000",
    "gasLimit": "0x493E00",
    "alloc": {
        "0x6ca393ad5e8c30e14f40c91af76bf7d79ebcbce2": {
            "balance": "1000000000000000000000000"
        }
    }
}
```

### How to mine:
* Add `--mine` to when running geth
