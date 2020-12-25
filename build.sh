#!/usr/bin/env bash

# fail on first error
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
# fail on first error
set -o errexit
set -o nounset
set -o pipefail

create_image() {
  local name="$1"
  local tag="$2"
  local file="$3"
  docker build -t "${name}:${tag}" .
}

name="cfn-flip"
version="1.2.3"
file="./cfn-flip-dockerfile"

create_image "${name}" "${version}" "${file}"
