#!/bin/bash

NEW_MAC=""
IFACE="enp4s0"

echo "[*] Назначаю $NEW_MAC на $IFACE"

sudo ip link set $IFACE down
sudo ip link set $IFACE address $NEW_MAC
sudo ip link set $IFACE up

sudo dhclient -r $IFACE
sudo dhclient -1 $IFACE &

DHCLIENT_PID=$!

sleep 2

if kill -0 $DHCLIENT_PID 2>/dev/null; then
	echo "[*] dhclient не завершился, автоматичекое прерывание..."
	sudo kill $DHCLIENT_PID
fi

ip a show $IFACE | grep inet
