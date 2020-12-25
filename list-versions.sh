#!/bin/bash

set -e

package_name="$1"

PACKAGE_JSON_URL="https://pypi.org/pypi/${package_name}/json"

curl -L -s "$PACKAGE_JSON_URL" | jq  -r '.releases | keys | .[]' | sort -V

