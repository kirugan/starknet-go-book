package main

import (
	"context"
	"fmt"
	"log"

	ethrpc "github.com/ethereum/go-ethereum/rpc"
)

var (
	endpoint = "https://limited-rpc.nethermind.io/mainnet-juno"
)

func main() {
	
	client, err := ethrpc.DialContext(context.Background(), endpoint)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("We have connected to:"+ endpoint)
	_ = client  // We will use this in later sections
}