#!/usr/bin/env bash

## USAGE: - searches for a hostname on a nameserver and returns the current ip
## ARGUMENT:{:hostname}

ip=$(dig +short $@)
if [ -z "$ip" ]; then
    echo Host: $@ not found
else
    echo $ip
fi
