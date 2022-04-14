#!/bin/bash
cat $1 | jq '. | @base64 | { base64: .}'