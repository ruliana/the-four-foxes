#!/bin/bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <pdf>" >&2
  exit 1
fi

pdf="$1"
outdir="${TMPDIR:-/tmp}/four-foxes-preview"
mkdir -p "$outdir"
qlmanage -t -s 2000 -o "$outdir" "$pdf" >/dev/null 2>&1
preview="$outdir/$(basename "$pdf").png"

echo "$preview"
