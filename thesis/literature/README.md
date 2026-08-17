# Thesis literature, organised by method family

One folder per method family of the research-gap survey
(`../research-gap/research-gap.pdf`). Each folder contains a `README.md`
index of its papers and a `fetch.sh` script that downloads them from arXiv
into a git-ignored `pdfs/` directory.

## Getting the papers

The PDFs are not stored in this repository. Fetch them all:

```bash
for d in */; do "$d/fetch.sh"; done
```

or one family at a time, for example `./pinn/fetch.sh`. Papers already
downloaded are skipped, so the scripts are safe to rerun.

| Folder | Survey section | Papers |
|---|---|---|
| `pinn/` | 2, physics-informed neural networks | 7 |
| `learned-simulators/` | 3, learned simulators on graphs | 3 |
| `neural-operators/` | 4, neural operators and the BC/geometry gap | 6 |
| `physics-in-architecture/` | 5, structure-preserving models | 3 |
| `hybrid-acceleration/` | 6, accelerate the classical solver | 5 |
| `rl-solver-control/` | 7, RL for solver control | 3 |
| `atomistic-scf/` | 8, the same gap at the atomistic scale | 5 |

Two survey references are journal-only and not fetchable from arXiv: the
npj Computational Materials paper on neural-network self-consistent fields,
and the Nature Communications paper on cross-domain MLIP transfer. Read those
through university access.

The papers remain the intellectual property of their respective authors and
publishers. This repository distributes only the index and the download
scripts, never the files themselves. Please do not redistribute what you
download.
