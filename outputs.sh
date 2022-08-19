#!/usr/bin/env bash

echo "this line is sent to stdout"
1>&2 echo "this line is send to stderr"
