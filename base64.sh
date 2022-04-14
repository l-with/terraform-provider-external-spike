#!/bin/bash
jq '. | @base64 | { base64: .}' < "$1"