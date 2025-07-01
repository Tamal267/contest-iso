#!/bin/bash

set -eux

source vars.sh

echo "admin_pc:mcc_talent" | chpasswd 2>/dev/null

echo "Creating team account, $TEAM_USER..."
useradd --create-home --password $(echo $TEAM_PASSWORD) --shell /bin/bash $TEAM_USER

chmod -R -v 750 /home/*
