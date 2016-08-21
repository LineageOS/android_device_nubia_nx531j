#!/bin/bash

set -e

export DEVICE=nx531j
export VENDOR=zte

function pull() {
  echo "Extracting /system/$1 ..."

  DIR=$(dirname $1)
  if [ ! -d $2/$DIR ]; then
    mkdir -p $2/$DIR
  fi

  if [ "$SRC" = "adb" ]; then
    adb pull /system/$1 $2/$1
  else
    cp $SRC/system/$1 $2/$1
  fi
}

function extract() {
  NOT_COMMENT_OR_BLANK='(^#|^$)'
  MODULE_FILE='^[-!~].+'
  LIBRARY_VARIENT='.+\.so\:.+\.so'

  for FILE in $(egrep -v $NOT_COMMENT_OR_BLANK $1); do
    if [[ $FILE =~ $MODULE_FILE ]]; then
      pull ${FILE:1} $2
    elif [[ $FILE =~ $LIBRARY_VARIENT ]]; then
      pull $(echo $FILE | cut -d ':' -f 1) $2
      pull $(echo $FILE | cut -d ':' -f 2) $2
    else
      pull $FILE $2
    fi
  done
}

if [ $# -eq 0 ]; then
  SRC=adb
else
  if [ $# -eq 1 ]; then
    SRC=$1
  else
    echo "$0: bad number of arguments"
    echo ""
    echo "usage: $0 [PATH_TO_EXPANDED_ROM]"
    echo ""
    echo "If PATH_TO_EXPANDED_ROM is not specified, blobs will be extracted from"
    echo "the device using adb pull."
    exit 1
  fi
fi

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

extract ../../$VENDOR/$DEVICE/proprietary-files.txt $BASE

./setup-makefiles.sh
