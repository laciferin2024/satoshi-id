set shell := ["sh", "-c"]
set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
#set allow-duplicate-recipe
#set positional-arguments
#set dotenv-load
set dotenv-filename := ".env"

set export


ETHEREUM_RPC := env("NEXT_PUBLIC_PASSPORT_MAINNET_RPC_URL", "https://metafountain.alt.technology")

ceramic :
     rm -rf ~/.ceramic/statestore
     npx ceramic daemon --network local --ethereum-rpc {{ETHEREUM_RPC}} --verbose --ipfs-api http://localhost:5001

ipfs *ARGS:
     #!/bin/bash
     # export IPFS_PATH=${IPFS_PATH:"./.ipfs"}
     ipfs daemon --enable-pubsub-experiment {{ARGS}}


blockchain:
     npx hardhat node 