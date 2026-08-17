# PINN reading list

Physics-informed neural networks: the equation goes into the loss, one
network fits one problem instance. Read this literature for the *lessons*,
not for the thesis method: the thesis question (generalisation across
boundary conditions and domains) is an operator-learning question that a
vanilla PINN cannot ask.

PDFs live in `pdfs/`, kept out of git. Re-download anywhere with `./fetch.sh`.

## Reading order

| # | File (local) | Reference | Why read it |
|---|---|---|---|
| 1 | `raissi-2017-pinn-part1-forward.pdf` | Raissi, Perdikaris, Karniadakis, arXiv:1711.10561 | The original idea, forward problems. Where the PDE-residual loss comes from. |
| 2 | `raissi-2017-pinn-part2-inverse.pdf` | same authors, arXiv:1711.10566 | Part two: inverse problems, where PINNs are genuinely strong (unknown coefficients from data). |
| 3 | `krishnapriyan-2021-failure-modes.pdf` | Krishnapriyan et al., arXiv:2109.01050 | The honest counterweight: PINNs fail on mildly hard convection and diffusion. The reference citation for "why not just PINNs". |
| 4 | `wang-2020-when-why-pinns-fail-ntk.pdf` | Wang, Yu, Perdikaris, arXiv:2007.14527 | *Why* training fails, through the neural tangent kernel. The mechanism behind paper 3. |
| 5 | `cuomo-2022-scientific-ml-pinns-survey.pdf` | Cuomo et al., arXiv:2201.05624 | Broad survey; use as a map, not a read-through. |
| 6 | `wang-2023-experts-guide-training-pinns.pdf` | Wang et al., arXiv:2308.08468 | The practical tricks that make PINNs trainable, if a physics-informed loss term is ever added to the thesis model. |
| 7 | `2024-pinn-limitations-prospects.pdf` | arXiv:2411.18240 | Recent limitations review; complements 3 and 5. |

## What to extract for the thesis

- The failure modes (papers 3, 4): cite when motivating why the thesis is
  not built on PINNs.
- The residual-loss idea (paper 1): a candidate *additional* loss term for
  the GNN model, physics as soft constraint on top of supervised data.
- Inverse problems (paper 2): the setting where PINNs beat alternatives,
  worth knowing to keep the criticism fair.
