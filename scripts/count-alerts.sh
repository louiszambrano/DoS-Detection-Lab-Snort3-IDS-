#!/usr/bin/env bash
set -euo pipefail
if [[ $# -ne 1 || ! -f $1 ]]; then
  echo "Usage: $0 /path/to/alert_fast.txt" >&2
  exit 2
fi
for sid in 1000001 1000002; do
  count=$(grep -c "\\[1:${sid}:" "$1" || true)
  printf 'SID %s: %s alerts\n' "$sid" "$count"
done
