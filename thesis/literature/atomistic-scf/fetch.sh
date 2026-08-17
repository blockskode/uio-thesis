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
fetch 2604.21657 sail-transferable-scf-initialization.pdf
fetch 2401.06533 density-matrix-prediction.pdf
fetch 2606.07327 six-open-questions-mlip-foundation-models.pdf
fetch 2603.10159 mlip-bias-and-finetuning.pdf
fetch 2509.20630 mlip-arena-benchmark.pdf
