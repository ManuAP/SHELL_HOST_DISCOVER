#!/bin/bash

function ctrl_c(){
        echo -e "\n\n[!] Saliendo...\n"
        tput cnorm; exit 1
}

trap ctrl_c INT

if [ $# -eq 0 ]; then
  echo "Uso: $0 [segmento de red]"
  exit 1
fi

network="$1"

tput civis

echo -e "\n Enumerando el network $network.0/24 \n"

for i in $(seq 1 254); do
  timeout 1 bash -c "ping -c 1 $network.$i" &>/dev/null && echo -e "\t[+] Host activo: $network.$i" &
done

wait

tput cnorm
