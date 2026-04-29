#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHANGED=0
for file in "$@"; do
  "$SCRIPT_DIR/gh-md-toc" --indent 2 --insert --no-backup --hide-footer "$file"
  if ! git diff --quiet "$file"; then
    echo "TOC updated in: $file — please re-stage and re-commit"
    CHANGED=1
  fi
done
exit $CHANGED
