#!/bin/bash

TARGET_DIR=$1

if [ -z "$1" ]; then TARGET_DIR="."; fi

TARGET_FILE="$TARGET_DIR/Magento_Invipay_Paygate.tgz"

if [ -f "$TARGET_FILE" ]; then rm "$TARGET_FILE"; fi

echo "Packaging Magento plugin into: $TARGET_FILE"
tar -zchvf "$TARGET_FILE" --exclude='.DS_Store' --exclude='.git' --exclude='.gitmodules' app