#!/bin/bash

if [ $distribution = "debian" ] || [ $distribution = "ubuntu" ]; then
  docker exec --tty ${container_id} env TERM=xterm apt-cache policy libpango1.0-dev
fi

docker exec --tty ${container_id} env TERM=xterm pango-view --version