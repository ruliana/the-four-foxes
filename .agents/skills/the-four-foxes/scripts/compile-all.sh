#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")/../../../.."

while IFS= read -r src; do
  out="${src%.typ}.pdf"
  echo "Compiling $src -> $out"
  typst compile --root . "$src" "$out"
done < <(rg --files characters game-master cases -g '*.typ' | sort)

echo "Done."
