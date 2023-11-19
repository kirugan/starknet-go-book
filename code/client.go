package main

import (
	"fmt"
	"log"

	rpc "github.com/NethermindEth/starknet.go/rpc"
	ethrpc "github.com/ethereum/go-ethereum/rpc"
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