#!/usr/bin/env bash

# Installs and ensures all plugins are up-to-date
update_plugins () {
  local bundle_dir='bundles'
  mkdir -p "$bundle_dir"

  for url in `cat plugins.list`; do
    local plugin=`basename $url`
    plugin=${plugin%.git}

    # Ensure repository up-to-date
    local plugin_dir="$bundle_dir/$plugin"
    if [ -d "$plugin_dir" ]; then
      (cd "$plugin_dir" && git pull origin master)
    else
      git clone $url "$plugin_dir"
    fi
  done
} && update_plugins && unset update_plugins
