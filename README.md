# Rubbish LaTeX Template

The unofficial, community-provided LaTeX template for ***Rubbish***---the pioneering open-access, peer-ignored journal hosted on Xiaohongshu (小红书), indexed by the *Web of Absurd* with an **Absurd Impact Factor (AIF) of 100**.

## Why does this exist?

The official *Rubbish* submission template is a Microsoft Word `.doc` file---not `.docx`, but the binary `.doc` format that Microsoft deprecated in 2007. On macOS, it renders with:

- Missing images (WMF format, Windows-only)
- Collapsed formatting and broken layouts
- Metadata scattered across random pages

WPS Office (Kingsoft) was evaluated as an alternative but proved equally inadequate, introducing font substitution artifacts and watermarks.

This LaTeX template was forensically reconstructed from the original `.doc` binary and faithfully reproduces the journal's visual identity while actually working on all operating systems.

## Features

- Cross-platform compilation (macOS, Windows, Linux)
- [Overleaf](https://www.overleaf.com) compatible (zero installation)
- Two-column body layout with single-column title block
- Green accent color (`#007146`) matching the original design
- Styled abstract box and DOI info box
- Section headings in bold italic green (3 levels)
- Baskerville body text with proper paragraph indentation

## Quick Start

### Option 1: Overleaf (Recommended)

1. Download this repository as a ZIP
2. Go to [Overleaf](https://www.overleaf.com) → New Project → Upload Project
3. Upload the ZIP
4. Set compiler to **XeLaTeX**
5. Compile and start writing your rubbish

### Option 2: Local Compilation

```bash
# Requires XeLaTeX (ships with TeX Live / MacTeX / MiKTeX)
xelatex rubbish-template.tex
```

**Required fonts** (pre-installed on macOS; install manually on Linux):
- Times New Roman (title, headers)
- Baskerville (body text)
- Georgia (email addresses)

## File Structure

```
rubbish-template/
├── rubbish-template.tex   # The template — edit this
├── rubbish-template.pdf   # Compiled preview
├── logo.png               # Journal logo (extracted from original .doc)
├── LICENSE                # MIT License
├── .gitignore
└── README.md
```

## Usage

1. Open `rubbish-template.tex`
2. Update the metadata commands at the top:
   ```latex
   \newcommand{\articletype}{Research Article}
   \newcommand{\received}{Received 00th January 20xx,}
   \newcommand{\accepted}{Accepted 00th January 20xx}
   \newcommand{\articledoi}{DOI: xx.xxxx/xxxx}
   \newcommand{\articletitle}{Your Title Here}
   ```
3. Replace placeholder author/affiliation info
4. Write your sections in the `multicols` environment
5. Compile with XeLaTeX

## Template Preview

**[View the compiled template (PDF)](rubbish-template.pdf)**

## Contributing

Pull requests are welcome. Given the journal's editorial standards, we suspect all pull requests will be merged without review.

## Citation

If you use this template, you may cite the accompanying paper:

> Arnold and Claude Opus 4.6. "The Official LaTeX Template for *Rubbish*: Because the `.doc` Template is, Well, Rubbish." *Rubbish*, 2026.

## License

MIT License. In the spirit of the circular economy, feel free to fork, modify, and redistribute.

---

*One person's rubbish is another person's publication---but every person deserves a template that actually works.*
