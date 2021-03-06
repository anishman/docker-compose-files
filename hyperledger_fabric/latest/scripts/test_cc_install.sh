#!/bin/bash

# Importing useful functions for cc testing
if [ -f ./func.sh ]; then
 source ./func.sh
elif [ -f scripts/func.sh ]; then
 source scripts/func.sh
fi

## Install chaincode on all peers
CC_NAME=${CC_02_NAME}
CC_PATH=${CC_02_PATH}
echo_b "Installing chaincode ${CC_NAME} on all 4 peers..."
chaincodeInstall 1 0 ${CC_NAME} ${CC_INIT_VERSION} ${CC_PATH}
chaincodeInstall 1 1 ${CC_NAME} ${CC_INIT_VERSION} ${CC_PATH}
chaincodeInstall 2 0 ${CC_NAME} ${CC_INIT_VERSION} ${CC_PATH}
chaincodeInstall 2 1 ${CC_NAME} ${CC_INIT_VERSION} ${CC_PATH}

echo_g "=== Install chaincode done ==="