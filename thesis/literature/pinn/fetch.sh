#!/usr/bin/env bash
# Download the PINN reading list from arXiv into pdfs/ (kept out of git).
set -uo pipefail
cd "$(dirname "$0")"
mkdir -p pdfs

fetch () {  # fetch <arxiv-id> <filename>
  if [ -s "pdfs/$2" ]; then echo "have    $2"; return; fi
  if curl -fsSL "https://arxiv.org/pdf/$1" -o "pdfs/$2"; then
    echo "fetched $2"
  else
    echo "FAILED  $2  (arXiv:$1)"; rm -f "pdfs/$2"
  fi
}

fetch 1711.10561 raissi-2017-pinn-part1-forward.pdf
fetch 1711.10566 raissi-2017-pinn-part2-inverse.pdf
fetch 2109.01050 krishnapriyan-2021-failure-modes.pdf
fetch 2007.14527 wang-2020-when-why-pinns-fail-ntk.pdf
fetch 2201.05624 cuomo-2022-scientific-ml-pinns-survey.pdf
fetch 2308.08468 wang-2023-experts-guide-training-pinns.pdf
fetch 2411.18240 2024-pinn-limitations-prospects.pdf
