#!/bin/bash

for plugin in /usr/src/app/plugins/*; do
  if [ -d "$plugin" ]; then
    cd "$plugin"
    npm link
    cd..
    npm link "$plugin"
    cd /usr/src/app
    echo "Linked $plugin"
  fi
done
