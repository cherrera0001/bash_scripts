#!/bin/bash

# ./portScan.sh  <ip-address>
if [$1]; then
       ip_address=$1
       for port i in $(seq 1 65535); do
               timeout 1 bash -c "echo '' > /dev/tcp/$ip_address/$port" && echo "El puerto está abierto"
       done
else
       echo -e "\[*] Uso: ./portScan.sh  <ip-address>\n"
       exit 1
fi
