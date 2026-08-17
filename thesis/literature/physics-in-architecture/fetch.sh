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
fetch 1906.01563 greydanus-2019-hamiltonian-nn.pdf
fetch 2003.04630 cranmer-2020-lagrangian-nn.pdf
fetch 2602.02788 2026-structure-preserving-geometry-generalization.pdf
