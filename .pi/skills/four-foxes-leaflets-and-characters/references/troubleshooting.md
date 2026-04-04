# Troubleshooting

## Rendering shows Typst source code instead of formatted content

Symptom:
- the PDF contains literal strings like `text(...)`, `v(...)`, `line(...)`, or `rgb(...)`

Cause:
- code expressions inside a content block were written without `#`

Fix:
- inside `[...]`, change helper/function calls to `#text(...)`, `#v(...)`, `#line(...)`, etc.

## Compile fails with `invalid number suffix`

Symptom:
- Typst reports an error near a hex color such as `rgb("#7a6040")`

Fix:
- switch to `rgb("7a6040")`
- or use component form such as `rgb(122, 96, 64)`

## Compile warns about `Linux Libertine`

Check:

```bash
typst fonts | grep -i "Linux Libertine"
```

If missing on macOS:

```bash
brew install --cask font-linux-libertine
```

## Output is not printer-friendly

Prefer these characteristics:
- white page background
- near-black body text
- restrained green/brown accent colors
- light gray or cream fills for boxes
- avoid heavy dark panels that waste ink

## Previewing PDFs in this repo

On macOS, render a preview image:

```bash
./scripts/preview-pdf.sh ./larry-fox.pdf
```

Then read the generated PNG and inspect:
- actual text instead of source code
- contrast
- spacing
- panel order
- footer placement
