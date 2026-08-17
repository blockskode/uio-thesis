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
fetch 1806.01261 battaglia-2018-relational-inductive-biases.pdf
fetch 2002.09405 sanchez-gonzalez-2020-learning-to-simulate.pdf
fetch 2010.03409 pfaff-2020-meshgraphnets.pdf
