#!/bin/bash

# Verify the installed location.
docker exec --tty ${container_id} env TERM=xterm which pango-view

# Verify the installed version.
docker exec --tty ${container_id} env TERM=xterm pango-view --version

# If the distribution is either Debian or Ubuntu.
if [ "${distribution}" = "debian" ] || [ "${distribution}" = "ubuntu" ]; then
  # Output all versions and priority for the package.
  docker exec --tty ${container_id} env TERM=xterm apt-cache policy libpango1.0-dev
fi