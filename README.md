# Machine Learning for Differential Equations

This repository contains preparatory work for a master's thesis in
Computational Science: Physics at the University of Oslo.

The project investigates whether machine-learning models—especially graph
neural networks—can learn physical dynamics from simulation data and
generalise beyond their training distribution to unseen boundary conditions
and geometries.

## Repository structure

- [`thesis/research-gap/`](thesis/research-gap/) — research-gap survey in
  LaTeX and PDF form
- [`thesis/literature/`](thesis/literature/) — papers grouped by method family

The research-gap survey compares seven families of methods:

1. Physics-informed neural networks
2. Learned simulators on graphs
3. Neural operators
4. Physics encoded in model architecture
5. ML acceleration of classical solvers
6. Reinforcement learning for solver control
7. Atomistic and self-consistent-field methods

Its central question is where current approaches stop generalising, with a
particular focus on unseen boundary conditions, unseen geometries, and unseen
physical systems.

## Build the survey

The document is built with [Tectonic](https://tectonic-typesetting.github.io/):

```bash
cd thesis/research-gap
tectonic research-gap.tex
```

The compiled document is also available as
[`thesis/research-gap/research-gap.pdf`](thesis/research-gap/research-gap.pdf).

## Literature

The [`thesis/literature/`](thesis/literature/) directory indexes the papers
used in the survey, organised by method family. Each family folder holds a
`README.md` listing its papers with the corresponding survey section, and a
`fetch.sh` script that downloads them.

**The PDFs themselves are not distributed in this repository.** They are
retrieved from arXiv on request, so each reader obtains the papers from the
publisher under the terms that apply to them. To fetch all of them:

```bash
cd thesis/literature
for d in */; do "$d/fetch.sh"; done
```

Or one family at a time:

```bash
thesis/literature/pinn/fetch.sh
```

The scripts are idempotent: papers already present are skipped, so rerunning
costs nothing. Files land in each family's `pdfs/` directory, which is
git-ignored.

Two survey references are journal-only and cannot be fetched from arXiv; they
are noted in the literature index and need university access.

The papers remain the intellectual property of their respective authors and
publishers. Please do not redistribute the downloaded files.

## Status

This is an early-stage research repository. The current survey is a working
document used to refine the thesis question and identify a defensible research
gap; it is not yet the final thesis proposal or thesis manuscript.
