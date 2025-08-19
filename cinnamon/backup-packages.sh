#!/usr/bin/env bash
set -euo pipefail
# Usage:
#   backup-packages.sh apt-file.txt snap-file.txt
#   Or provide a single filename—and both lists go in it.

if (($# == 0 || $# > 2)); then
  echo "Usage: $0 <apt-output-file> [snap-output-file]"
  exit 1
fi

APT_FILE="$1"
SNAP_FILE="${2:-$APT_FILE}"

echo "Exporting APT package selections to $APT_FILE..."
dpkg --get-selections >"$APT_FILE"
echo "Done."

echo "Exporting Snap package list to $SNAP_FILE..."
snap list --all >"$SNAP_FILE"
echo "Done."

echo "Backup completed."
