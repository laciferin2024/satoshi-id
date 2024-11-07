ceramic:
     rm -rf ~/.ceramic/statestore
     npx ceramic daemon --network local --ethereum-rpc https://metafountain.alt.technology --verbose --ipfs-api http://localhost:5001

ipfs *ARGS:
     ipfs daemon --enable-pubsub-experiment {{ARGS}}
