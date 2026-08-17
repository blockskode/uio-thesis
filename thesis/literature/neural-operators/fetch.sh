#!/usr/bin/env bash
# Download this family's papers from arXiv into pdfs/ (kept out of git).
set -uo pipefail
cd "$(dirname "$0")"
mkdir -p pdfs
fetch () {
  if [ -s "pdfs/$2" ]; then echo "have    $2"; return; fi
  if curl -fsSL "https://arxiv.org/pdf/$1" -o "pdfs/$2"; then echo "fetched $2"
  else echo "FAILED  $2  (arXiv:$1)"; rm -f "pdfs/$2"; fi
}
fetch 1910.03193 lu-2019-deeponet.pdf
fetch 2003.03485 li-2020-graph-kernel-network-pde.pdf
fetch 2010.08895 li-2020-fourier-neural-operator.pdf
fetch 2202.03376 brandstetter-2022-message-passing-pde-solvers.pdf
fetch 2504.00510 2025-domain-decomposition-geometry-generalization.pdf
fetch 2602.04923 2026-bc-via-learned-function-extensions.pdf
