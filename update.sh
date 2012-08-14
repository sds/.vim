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

  for plugin_name in `ls $bundle_dir`; do
    if [ ! `grep -R $plugin_name plugins.list` ]; then
      echo "Removing '$plugin_name' since it is not in plugins.list"
      rm -rf "$bundle_dir/$plugin_name"
    fi
  done
} && update_plugins && unset update_plugins
