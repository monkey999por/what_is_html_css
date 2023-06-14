#!/bin/bash

SOURCE_DIR=$1
TARGET_DIR=$2

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory does not exist"
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory does not exist"
  mkdir -p $TARGET_DIR
fi

find $SOURCE_DIR -name '*.scss' | while read FILE
do
  RELATIVE_PATH=${FILE#"$SOURCE_DIR/"}
  TARGET_SUB_DIR=$(dirname "$RELATIVE_PATH")
  mkdir -p "$TARGET_DIR/$TARGET_SUB_DIR"
  
  sass $FILE "${TARGET_DIR}/${TARGET_SUB_DIR}/$(basename "$RELATIVE_PATH" .scss).css"
done

