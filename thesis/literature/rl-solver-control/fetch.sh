#!/usr/bin/env bash
# Download this family's papers from arXiv into pdfs/ (kept out of git).
set -uo pipefail
cd "$(dirname "$0")"
mkdir -p pdfs
fetch () {
  if [ -s "pdfs/$2" ]; then echo "have    $2"; return; fi
  if curl -fsSL "https://arxiv.org/pdf/$1" -o "pdfs/$2"; then echo "fetched $2"; sleep 1  # be polite to arXiv
  else echo "FAILED  $2  (arXiv:$1)"; rm -f "pdfs/$2"; fi
}
fetch 2103.01342 rl-adaptive-mesh-refinement-2021.pdf
fetch 2209.12351 deep-rl-adaptive-mesh-refinement-2022.pdf
fetch 2406.08440 swarm-mesh-refinement-local-rewards.pdf
