# Machine Learning for Differential Equations

This repository contains preparatory work for a master's thesis in
Computational Science: Physics at the University of Oslo.

The project investigates whether machine-learning models—especially graph
neural networks—can learn physical dynamics from simulation data and
generalise beyond their training distribution to unseen boundary conditions
and geometries.

## Repository structure

```text
thesis/
├── research-gap/   # Research-gap survey in LaTeX and PDF form
└── literature/     # Papers grouped by method family
```

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

The `thesis/literature/` directory contains the papers used in the survey,
organised by method family. Each family includes an index describing its
papers and, where available, a script for retrieving them from arXiv.

The papers remain the intellectual property of their respective authors and
publishers and are included here for academic reference.

## Status

This is an early-stage research repository. The current survey is a working
document used to refine the thesis question and identify a defensible research
gap; it is not yet the final thesis proposal or thesis manuscript.
