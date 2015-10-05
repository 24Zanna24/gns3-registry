#!/bin/sh
#
# Copyright (C) 2015 GNS3 Technologies Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

set -e

export KEYMAPOPTS="us us"
export HOSTNAMEOPTS="-n alpine"
export INTERFACESOPTS="
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp"
export TIMEZONEOPTS="-z UTC"
export PROXYOPTS="none"
export APKREPOSOPTS="-r"
export SSHDOPTS="-c openssh"
export NTPOPTS="-c none"
export SWAP_SIZE=0

# Answer to password question twice and yes to format drive
setup-alpine <<EOF
gns3
gns3
sda
sys
y
EOF

