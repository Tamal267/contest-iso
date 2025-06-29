#!/bin/bash

set -eux

DOTS_DIR="dots"
SCRIPTS_DIR="scripts"
ADMIN_SCRIPTS_DIR="postinst/admin/"

ADMIN_USER="admin_pc"
ADMIN_PASSWORD='$1$HvrO9a.3$xiiVtUtpPMOPWgiYamq/k1'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

TEAM_USER="mcc"
TEAM_PASSWORD='$1$KwqD27gq$xADGuJWA0m6TKAcZqXPU6.'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)