#!/usr/bin/env bash

grep '🙿' pres.md | sed -e 's/\s*🙿\s*//' | sed -e 's/\s*🙾\s*//' | nl -n ln  
