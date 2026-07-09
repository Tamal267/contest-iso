#!/bin/bash

set -eux

# Disable kdump-tools kernel hook during upgrade if it exists to prevent mkinitramfs failures in chroot/Cubic
KDUMP_HOOK="/etc/kernel/postinst.d/kdump-tools"
KDUMP_DISABLED=false
if [[ -f "$KDUMP_HOOK" && -x "$KDUMP_HOOK" ]]; then
	chmod -x "$KDUMP_HOOK"
	KDUMP_DISABLED=true
fi

# Set MODULES=most in kdump initramfs-tools config if it exists
if [[ -f "/var/lib/kdump/initramfs-tools/initramfs.conf" ]]; then
	sed -i 's/MODULES=dep/MODULES=most/g' /var/lib/kdump/initramfs-tools/initramfs.conf
fi

# Attempt to configure any broken packages first
dpkg --configure -a || true
apt-get install -y -f || true

apt update
apt -y dist-upgrade

# Restore kdump-tools hook if we disabled it
if [[ "$KDUMP_DISABLED" = true ]]; then
	chmod +x "$KDUMP_HOOK"
fi

