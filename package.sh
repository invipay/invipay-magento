#!/bin/bash

NOW=$(date)
BUILD="Build: $2:$3 ($NOW)"
TARGET_DIR=$1

if [ -z "$1" ]; then TARGET_DIR="."; fi

TARGET_FILE="$TARGET_DIR/Magento_Invipay_Paygate.tgz"

echo "Packaging Magento Plugin ($BUILD) into: $TARGET_FILE"

if [ -f "$TARGET_FILE" ]; then rm "$TARGET_FILE"; fi

echo "$BUILD" > app/code/community/Invipay/VERSION.md
tar -zchvf "$TARGET_FILE" --exclude='.DS_Store' --exclude='.git' --exclude='.gitmodules' app