# Master thesis proposal, LaTeX template

Skeleton only. All content is left to be written; every place that needs
writing is marked with `\todo{...}` and shows up in red in the draft build.

## Build

```bash
make            # build proposal.pdf
make open       # build and open
make clean      # remove artefacts
```

Or directly: `tectonic proposal.tex`.

## Layout

```
proposal/
├── proposal.tex        main file: title page, abstract, section order
├── preamble.tex        packages, styling, macros. Edit setup here.
├── references.bib      bibliography
├── Makefile
├── sections/           one file per section, write here
│   ├── 01-introduction.tex
│   ├── 02-background.tex
│   ├── 03-research-questions.tex
│   ├── 04-method.tex
│   ├── 05-workplan.tex
│   ├── 06-contribution.tex
│   └── 07-risks.tex
└── figures/            images go here, \includegraphics finds them
```

Each section file opens with a comment block describing what belongs in it.
Delete those comments once the section is written.

## Before you start

Fill in the four macros at the top of `proposal.tex`: title, subtitle,
supervisor, and check the author name. They propagate to the title page.

## Draft mode

`preamble.tex` sets `\draftmodetrue`. While it is true:

- `\todo{...}` renders in red
- `\note{...}` renders in blue italics

Set `\draftmodefalse` before submitting and both disappear, without deleting
anything from the source.

## Useful commands already defined

| Command | Purpose |
|---|---|
| `\cite{key}` | citation, keys are in `references.bib` |
| `\cref{label}` | smart cross-reference, writes "Section 3" or "Equation 2" |
| `\SI{9.81}{\meter\per\second\squared}` | numbers with units, correctly spaced |
| `\vect{u}`, `\mat{A}` | bold vectors and matrices |
| `\norm{x}`, `\abs{x}`, `\inner{u}{v}` | norms, absolute values, inner products |
| `\ket{\psi}`, `\bra{\psi}`, `\braket{\phi}{\psi}` | quantum notation |
| `\pd{u}{t}`, `\dd` | partial derivatives, upright differential |
| `\begin{keybox}...\end{keybox}` | framed box for a key statement |

Add your own macros at the bottom of `preamble.tex` rather than repeating
notation by hand. Changing it once then changes it everywhere.

## The bibliography

`references.bib` is pre-loaded with the papers gathered in
`../research-directions-ml-solvers.pdf`. Keep the ones you cite, delete the
rest. Nothing in the document cites them yet.

Uses natbib with bibtex, both bundled with tectonic, so no extra tools are
needed on any machine.

**Expected warning until you cite something.** The build currently prints
`I found no \citation commands`. That is bibtex noting there is nothing to
process yet, and it disappears with your first `\cite{...}`. The PDF builds
correctly either way.

A citation needs two passes to resolve, which the Makefile handles. If a
reference shows as `[?]`, run `make` once more.
