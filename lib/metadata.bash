#!/bin/bash

set -euo pipefail

# Write agent metadata for the plugin
function plugin_set_metadata() {
  local key="github-repository-dispatch-plugin-$1"
  local value="$2"
  buildkite-agent meta-data set "$key" "$value"
}
