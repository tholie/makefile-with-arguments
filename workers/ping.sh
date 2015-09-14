#!/usr/bin/env bash

## USAGE: - Pingt einen mit ip-adresse angegebenen Host
## USAGE: - Der Ping wird nur einmal ausgeführt
## USAGE: - Wenn der Host beim einmaligen Ping nicht reagiert, wird er als down markiert
## ARGUMENT:{:ip-adresse}
ping -c 1 $@ >> /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo Host: $@ is up
else
    echo Host: $@ is down
fi
