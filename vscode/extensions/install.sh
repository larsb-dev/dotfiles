#!/bin/sh

cat global.txt | xargs -n 1 code --install-extension
