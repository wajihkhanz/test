#!/bin/bash

CONFIG_FILE="config/webserver.conf"

# 1. Check karein ke file mojood hai ya nahi
if [ ! -f "$CONFIG_FILE" ]; then
    echo "ERROR: $CONFIG_FILE nahi mili!"
    exit 1
fi

# 2. Check karein ke file khali (empty) toh nahi
if [ ! -s "$CONFIG_FILE" ]; then
    echo "ERROR: $CONFIG_FILE bilkul khali hai!"
    exit 1
fi

# 3. Check karein ke zaroori keywords (server, listen) mojood hain
if ! grep -q "server" "$CONFIG_FILE" || ! grep -q "listen" "$CONFIG_FILE"; then
    echo "ERROR: Zaroori keywords (server/listen) missing hain!"
    exit 1
fi

echo "SUCCESS: Configuration file bilkul theek hai."
exit 0