#!/usr/bin/env bash

set -e

cd src
./compile.sh
cd ..
java -jar anonymouth.jar
