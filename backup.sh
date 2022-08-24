#!/bin/bash

DIR=$1
ALGO=$2
FILE=$3

tar -c --$ALGO $DIR | openssl enc -e -aes256 -out $FILE > /dev/null 2>error.log
