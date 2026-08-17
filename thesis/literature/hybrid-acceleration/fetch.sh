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
fetch 2511.02481 nows-neural-operator-warm-starts.pdf
fetch 2607.28456 gnn-multilevel-preconditioners.pdf
fetch 2405.02952 non-intrusive-meta-solving.pdf
fetch 2310.06630 intelligent-iterative-methods-survey.pdf
fetch 2602.06842 are-hybrid-pde-solvers-reliable.pdf
