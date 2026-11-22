#!/usr/bin/env bash
set -e
REPO="lnibfuban/pyamplewell"
LIB="nasal-drift.a"
URL="https://github.com/${REPO}/releases/download/eager-badger-bright-canyon/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
