---
description: Learn how to deploy, compile, and interact with smart contracts, send transactions, and much more with this little guide book on Starknet Development with Go.
---

# Starknet Development with Go

This little guide book is to serve as a general help guide for anyone wanting to develop Starknet applications using the Go programming language. It's meant to provide a starting point if you're already pretty familiar with Starknet and Go but don't know where to to start on bringing it all together. You'll learn how to interact with smart contracts and perform general blockchain tasks and queries using Golang.

This book is composed of many examples that I wish I had encountered before when I first started doing Starknet development with Go. This book will walk you through most things that you should be aware of in order for you to be a productive Starknet developer using Go.

Starknet is quickly evolving and things may go out of date sooner than anticipated. I strongly suggest opening an [issue](https://github.com/kirugan/starknet-go-book/issues) or making a [pull request](https://github.com/kirugan/starknet-go-book/pulls) if you observe things that can be improved. This book is completely open and free and available on [github](https://github.com/kirugan/starknet-go-book).

#### Online

[https://gostarknetbook.org/](https://gostarknetbook.org/)

#### E-book

The e-book is avaiable in different formats.

- [PDF (todo)]
- [EPUB (todo)]
- [MOBI (todo)]

## Introduction

[Starknet](https://www.starknet.io/en), a Layer-2 enhancement operating on the Ethereum blockchain, offers a decentralized, permissionless zk-Rollup solution. It amplifies Ethereum's scalability and efficiency, particularly in smart contract execution, by incorporating zero-knowledge proofs. This integration results in improved privacy and reduced transaction costs. StarkNet distinguishes itself by facilitating more intricate and resource-efficient state transitions. Its consensus mechanism, uniquely tailored for its framework, leverages the robust security and infrastructure of Ethereum. This design empowers developers to build complex, decentralized applications on Ethereum's network more efficiently, ensuring lower computational load and preserving the blockchain's core principles of decentralization and security.

#### Cairo smart contract language

Cairo is a Turing-complete programming language designed for writing smart contracts, particularly for StarkNet's Layer-2 scaling solution on the Ethereum blockchain. Unlike Solidity, which compiles to Ethereum Virtual Machine (EVM) bytecode, Cairo compiles to a unique form of bytecode optimized for zero-knowledge proofs. This bytecode is executed within StarkNet's environment, harnessing the efficiency and security benefits of zero-knowledge rollups.


#### Starknet.go

In this book, we'll utilize [starknet.go](https://github.com/NethermindEth/starknet.go), a Golang-based SDK for StarkNet, to facilitate our interactions with the blockchain. This SDK offers a comprehensive set of tools for both reading from and writing to the blockchain, making it an ideal choice for developing applications in Golang specifically tailored for StarkNet.

The examples in this book were tested with Starknet.go version `0.5.0` and Go version `go1.20`.

#### Block Explorers

[Voyager](https://voyager.online/), akin to Etherscan for Ethereum, serves as a Block Explorer specifically for the StarkNet ecosystem. It enables detailed exploration and analysis of data residing on the StarkNet blockchain. As a Block Explorer, Voyager offers users the ability to delve into the contents of blocks on StarkNet, each of which encapsulates the data of transactions processed within a designated timeframe. Additionally, Voyager provides insights into various aspects of smart contract execution on StarkNet, such as emitted events, gas fees incurred, and the specifics of transactional operations, enhancing transparency and accessibility of blockchain data.


## Support

We recommend checking out Starknets official [online-communities web page](https://www.starknet.io/en/community/online-communities), where you can get help and interact with Starknet communities all around the world. The Starknet [documentation](https://docs.starknet.io/documentation/) is also a great place to get a better understanding of how the Starknet blockchain functions.

---

Enough with the introduction, let's get [started](../en/client)!
