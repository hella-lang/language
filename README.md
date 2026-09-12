# Hella Language Specification

`hellaLangSpec.tex` presents
[`hella/references/ebnf-0.1.txt`](../hella/references/ebnf-0.1.txt)
(Draft 0.2) as a typeset language specification document.
Only the pieces needed to build the PDF are included:

| File | Contents |
| ---- | -------- |
| `hellaLangSpec.tex` | The specification. Every EBNF rule from `ebnf-0.1.txt`, written as `grammar` environments (`<camelCase>` syntactic, `<UPPER_CASE>` lexical, `\KEYWORD{}` macros, `\gnewline{}`, `` `term' `` terminals). |
| `hella.sty` | LaTeX style file: keyword/built-in macros for Hella's 56 keywords + contextual words (`get`/`set`/`has`/`end`/`convert`/`to`/`extend`/`from`/`initialize`/`Self`), code environments, index/location-marker helpers. |
| `Makefile` | Build targets: `pdf`, `dvi`, `clean`, `cleanish`. |
| `scripts/build_pdf.sh` | Builds the PDF via `make pdf`. |

## Build the PDF

Requirements: a LaTeX distribution providing `pdflatex` and `makeindex`
with the `syntax`, `semantic`, `amsmath`, `amssymb`, `hyperref`,
`lmodern`, `tocloft`, `xcolor`, `xspace` and `epsfig` packages
(e.g. TeX Live: `texlive-latex-base`, `texlive-latex-extra`,
`texlive-fonts-recommended`, `lmodern`).

```sh
cd hella-spec
make pdf        # -> hellaLangSpec.pdf
```

or

```sh
./scripts/build_pdf.sh
```
