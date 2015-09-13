#!/usr/bin/env bash

## USAGE: - Durchsucht den Nameserver nach einem Hostnamen und gibt die Aktuelle IP Adresse zurück
## USAGE: - Wenn der Host nicht gefunden wurde, wird eine entsprechende Meldung ausgegeben
## ARGUMENT:{:hostname}

ip=$(dig +short $@)
if [ -z "$ip" ]; then
    echo Host: $@ not found
else
    echo $ip
fi
