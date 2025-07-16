#!/bin/bash

set -eu

echo "y" | sudo ufw reset
sudo ufw default deny incoming
sudo ufw default deny outgoing