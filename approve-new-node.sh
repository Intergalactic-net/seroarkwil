#!/bin/bash
# approve-new-node.sh

# Check if an argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <ID>"
    exit 1
fi

# Check if the ./testnet/node0 directory exists
if [ ! -d "./testnet/node0" ]; then
    echo "Directory ./testnet/node0 does not exist."
    exit 2
fi

# Assign the first argument to a variable
ID=$1

# Use the variable in the command
./kwil-admin validators approve "$ID" --rpcserver unix:///tmp/node0.sock
