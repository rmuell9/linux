#!/bin/bash

dir=$(basename "$PWD")
capitalized="${dir^}"
notify-send "Configuration: $capitalized" "$PWD"
