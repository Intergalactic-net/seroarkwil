#!/bin/bash

# Check if the ./testnet/node0 directory exists
if [ -d "./testnet/node0" ]; then
    echo "Directory ./testnet/node0 already exists"
    exit 2
fi

./kwil-admin setup init -o ./testnet/node0
