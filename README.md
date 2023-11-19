<p align="center">
  <a href="https://gostarknetbook.org">
  <img src="https://github.com/kirugan/starknet-go-book/raw/main/assets/cover.jpg" width="320" alt="Book cover" /></a>
</p>
<br>

# Starknet Development with Go

> A little guide book on [Starknet](https://www.starknet.io/) Development with [Go](https://golang.org/) (golang)

[![License](http://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/miguelmota/merkletreejs/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#contributing)

## Online

[https://gostarknetbook.org](https://gostarknetbook.org/)

## E-book

The e-book is avaiable in different formats.

- [PDF (todo)]
- [EPUB (todo)]
- [MOBI (todo)]

## Languages

* [English](en/)
* [Russian (todo)](ru/)

## Contents

* [Introduction](en/README.md)
* [Client](en/client/README.md)
  * [Setting up the Client](en/client-setup/README.md)
* Felts
  * Using felts
* Accounts
  * Account Balances
  * Generating New Public-Private Keys
  * Generating New Keystores
* Transactions
  * Querying Blocks
  * Querying Transactions
  * Transferring Tokens
  * Subscribing to New Blocks
  * Create Raw Transaction
  * Send Raw Transaction
* Smart Contracts
  * Smart Contract Compilation &amp; ABI
  * Deploying a Smart Contract
  * Loading a Smart Contract
  * Querying a Smart Contract
  * Writing to a Smart Contract
  * Reading Smart Contract Bytecode
  * Querying an ERC20 Token Smart Contract
* Event Logs
  * Subscribing to Event Logs
  * Reading Event Logs
  * Reading ERC-20 Token Event Logs
* Signatures
  * Generating Signatures](en/signature-generate/README.md)
  * Verifying Signatures
* Testing
  * Faucets
* Utilities
  * Collection of Utility Functions
* Glossary
* Resources

## Help & Support

We recommend checking out Starknets official [online-communities web page](https://www.starknet.io/en/community/online-communities), where you can get help and interact with Starknet communities all around the world. The Starknet [documentation](https://docs.starknet.io/documentation/) is also a great place to get a better understanding of how the Starknet blockchain functions.

## Development

todo

Install dependencies:

```bash
make install
```

Run gitbook server:

```bash
make serve
```

Generating e-book in pdf, mobi, and epub format:

```bash
make ebooks
```

Visit [http://localhost:4000](http://localhost:4000)

## Contributing

Pull requests are welcome!

If making general content fixes:

- please double check for typos and cite any relevant sources in the comments.

If updating code examples:

- make sure to update both the code in the markdown files as well as the code in the [code](code/) folder.

If wanting to add a new translation, follow these instructions:

1. Set up [development environment](#development)
2. Add language to `LANGS.md`
3. Copy the the `en` directory and rename it with the 2 letter language code of the language you're translating to (e.g. `zh`)
4. Translate content
5. Set `"root"` to `"./"` in `book.json` if not already set

## Thanks

This book takes heavy inspiration from the amazing [ethereum-development-with-go-book](https://github.com/miguelmota/ethereum-development-with-go-book). We highly recommend checking out this book if you're interested in learning how to interact with the Ethereum blockchain.

Todo.

## License

Released under the [CC0-1.0](./LICENSE) license.
© todo
