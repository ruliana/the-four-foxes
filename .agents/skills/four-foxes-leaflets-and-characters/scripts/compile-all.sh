#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")/../../../.."

for src in ./*.typ; do
  [ -e "$src" ] || continue
  base="$(basename "$src")"
  [[ "$base" == _* ]] && continue
  out="${src%.typ}.pdf"
  echo "Compiling $src -> $out"
  typst compile "$src" "$out"
done

echo "Done."
