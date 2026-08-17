# Thesis literature, organised by method family

One folder per method family of the research gap survey
(`../research-gap.pdf`). Each folder holds a `README.md` index, a
`fetch.sh` that re-downloads its papers from arXiv, and a local `pdfs/`
kept out of git.

| Folder | Survey section | Papers |
|---|---|---|
| `pinn/` | 2, physics-informed neural networks | 7 |
| `learned-simulators/` | 3, learned simulators on graphs | 3 |
| `neural-operators/` | 4, neural operators and the BC/geometry gap | 6 |
| `physics-in-architecture/` | 5, structure-preserving models | 3 |
| `hybrid-acceleration/` | 6, accelerate the classical solver | 5 |
| `rl-solver-control/` | 7, RL for solver control | 3 |
| `atomistic-scf/` | 8, the same gap at the atomistic scale | 5 |

Two survey references are journal-only and not fetchable from arXiv:
the npj Computational Materials paper on neural-network self-consistent
fields, and the Nature Communications paper on cross-domain MLIP transfer.
Read those through university access.

To restore everything on a fresh machine:
`for d in */; do "$d/fetch.sh"; done`
