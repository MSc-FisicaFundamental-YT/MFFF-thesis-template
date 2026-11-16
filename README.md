# MFFF thesis template

LaTeX template for the thesis of the **MSc in Physics with specialisation in Fundamental Physics** (Maestría en Física, mención Física Fundamental) at Yachay Tech University.

It follows the postgraduate presentation rules (*Anexo 3. Formato de presentación*): A4 paper, Times font, 10 pt, 1.5 line spacing, and no page numbers or running headers on the initial pages. The thesis is written in English. The cover page, *Autoría* and *Autorización de publicación* pages are generated in Spanish.

Read the style guide first: [`style_guide/style_guide.pdf`](style_guide/style_guide.pdf) (two pages).

## Files

| File / folder | Content |
|---|---|
| `main.tex` | Main file, please compile this one. If you have publications, uncomment the disclaimer section. |
| `content/` | One file per chapter (`01_introduction.tex` to `05_conclusions.tex`) and one per appendix (`Appendix_A.tex`). Write there. You can rename, add or remove chapters; update the `\input` lines in `main.tex`. |
| `images/logos/` | Yachay Tech logo used on the cover page. |
| `images/plots/` | Your figures. Use vector formats (PDF, EPS) when possible, or images of at least 300 dpi. `sine.eps` is an example figure used by the style guide. |
| `thesis.bib` | Your references in BibTeX format. It contains a few example entries. |
| `thesis.cls` | Document class: page layout, fonts, cover page, Autoría and Autorización de publicación pages. Do not edit it. |
| `aa_url.bst` | Optional astrophysics citation style (A&A, ApJ, MNRAS). |
| `style_guide/style_guide.pdf` | Two-page style guide: format rules, recommended length, and examples of citations, figures, tables and equations. |
| `style_guide/style_guide.tex` | Source of the style guide. It is a separate document that reuses the files above; you do not need to compile it. |
| `.gitignore` | Tells Git to ignore LaTeX auxiliary files. |

## Option 1: Overleaf

1. Download this repository as a ZIP file (on GitHub: **Code → Download ZIP**). Do not unzip it.
2. In [Overleaf](https://www.overleaf.com), click **New Project → Upload Project** and select the ZIP file.
3. Open **Menu** (top left) and check that **Compiler** is `pdfLaTeX` and **Main document** is `main.tex`.
4. Click **Recompile**. Overleaf runs BibTeX automatically.

To read the style guide on Overleaf, open `style_guide/style_guide.pdf` from the file list.

## Option 2: Compile locally (macOS or Linux)

You need a LaTeX distribution: [MacTeX](https://www.tug.org/mactex/) on macOS, or TeX Live on Linux (e.g. `sudo apt install texlive-full` on Debian/Ubuntu).

**Thesis** (from the template folder):

```bash
latexmk -pdf main.tex
```

or, without `latexmk`:

```bash
pdflatex main; bibtex main; pdflatex main; pdflatex main
```

**Style guide** (only if you change it; from the `style_guide/` folder, because it uses files from the parent folder):

```bash
cd style_guide
latexmk -pdf style_guide.tex
```

or `pdflatex style_guide; bibtex style_guide; pdflatex style_guide; pdflatex style_guide`.

To remove the auxiliary files, run `latexmk -c` (thesis) or `rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.glo *.idx *.synctex.gz`.

Until you cite something, BibTeX prints the message "I found no \citation commands". This is normal and does not stop the compilation.

## Credits

Template by Yachay Tech University. Created by [D. Villarruel-Yánez](https://github.com/dvillarruelyanez), updated by [Y. Males-Araujo ](https://github.com/whyyorlantaken), and adapted for the MSc in Physics (Fundamental Physics) in 2026.
