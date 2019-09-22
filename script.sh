#!/bin/bash
#Define variable
STRING="Hello World"
echo $STRING
echo "Again"
#tail -f /dev/null

make clean

exec "$@";
