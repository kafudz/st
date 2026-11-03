#!/usr/bin/env bash
set -e

echo "==> Installing dependencies (Debian/Ubuntu)..."
sudo apt update
sudo apt install -y build-essential pkg-config libx11-dev libxft-dev libfontconfig1-dev libfreetype-dev

echo "==> Cleaning previous builds..."
make clean

echo "==> Building st with optimizations..."
make

echo "==> Installing st to /usr/local..."
sudo make install

echo "==> Build and installation complete!"