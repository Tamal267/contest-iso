#!/bin/bash

set -eux

DOTS_DIR="dots"
SCRIPTS_DIR="scripts"
ADMIN_SCRIPTS_DIR="postinst/admin/"

ADMIN_USER="admin"
ADMIN_PASSWORD='$1$5iOZoVZq$m46pHKOYM9DLeUL9XSVro.'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

TEAM_USER="contestant"
TEAM_PASSWORD='$1$qIyPEObu$xVoLAy86H1K7RKN4yMqZa/'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

MOCK_USER="mock"
MOCK_PASSWORD='$1$qIyPEObu$xVoLAy86H1K7RKN4yMqZa/'
# encrypted with $(openssl passwd -1 'PLAINTEXTPASSWORD')
