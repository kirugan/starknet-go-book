---
description: Tutorial on how to set up a client to connect to Starknet with Golang.
---

# Setting up the Client

Setting up the client in Golang is a fundamental step required for interacting with the Starknet blockchain. First import the ethclient `go-ethereum` Ethereum package and initialize it by calling `Dial` which accepts a provider URL.

You can use any public endpoint of your choosing to connect to the Starknet blockchain. For convenience, Nethermind has provided some public endpoints which we will use here. Alternatively, you can sign up to a Infura to get access to the Starknet network.


```go
client, err := ethclient.Dial("https://limited-rpc.nethermind.io/mainnet-juno")
```

Using the ethclient is a necessary thing you'll need to start with for every Starknet.go project and you'll be seeing this step a lot throughout this book.

## Using Starknet-devnet

[Starknet-devnet](https://github.com/0xSpaceShard/starknet-devnet) allows you to run a local starknet-testnet. If you are familiar with Ganache, it serves a similar purpose but for the Starknet blockchain.


---

### Full code

[client.go](https://github.com/kirugan/starknet-go-book/client.go)

```go
package main

import (
	"context"
	"fmt"
	"log"

	ethrpc "github.com/ethereum/go-ethereum/rpc"
    rpc "github.com/NethermindEth/starknet.go/rpc"
)

var (
	endpoint = "https://limited-rpc.nethermind.io/mainnet-juno"
)

func main() {
ethClient, err := ethrpc.Dial(endpoint)
	if err != nil {
		log.Fatal(err)
	}
	client:=rpc.NewProvider(ethClient)
	fmt.Println("We have connected to:"+ endpoint)
	_ = client  // We will use this in later sections
}
```
