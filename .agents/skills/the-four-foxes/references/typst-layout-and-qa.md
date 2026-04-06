# Typst Layout and QA

Use this reference when editing Typst files, changing the shared template, compiling outputs, previewing PDFs, or debugging layout and rendering problems.

## Commands and preview tools

### Compile one leaflet

```bash
typst compile --root . ./characters/larry-fox.typ ./characters/larry-fox.pdf
```

Replace `larry` as needed, or compile files in `./game-master/` or `./cases/` the same way.

### Compile all non-template leaflets

```bash
./.agents/skills/the-four-foxes/scripts/compile-all.sh
```

### Render a preview image from a PDF on macOS

```bash
./.agents/skills/the-four-foxes/scripts/preview-pdf.sh ./characters/larry-fox.pdf
```

This prints the preview file path. Read that image to inspect the rendered layout.

### Export PDF pages as separate PNGs for closer inspection

```bash
mkdir -p /tmp/four-foxes-pages
magick -density 180 ./characters/larry-fox.pdf /tmp/four-foxes-pages/larry-fox-%d.png
```

Use this when you need to inspect a specific page or panel closely, especially after changing inside-page content.

### Check the required font

```bash
typst fonts | grep -i "Linux Libertine"
```

## Workflow for editing existing sheets or the shared template

1. Read the full Typst file or files you will change.
2. If changing the template, also inspect at least one file that uses it.
3. Make the smallest safe edit.
4. Compile the affected file.
5. If the template changed, compile all character, game-master, and case leaflets.
6. Render a PNG preview from the PDF and inspect the result visually.
7. Look specifically for literal code showing up, overflow, bad contrast, and font warnings.

## Critical gotchas learned in this project

### 1) Literal Typst code in the PDF usually means missing `#` inside content blocks

Inside content blocks (`[...]`) nested in code, function calls must be introduced as code expressions.

Wrong:

```typst
align(center)[
  text(size: 7.5pt)[THE FOUR FOXES]
  v(0.3em)
  line(length: 55%)
]
```

Right:

```typst
align(center)[
  #text(size: 7.5pt)[THE FOUR FOXES]
  #v(0.3em)
  #line(length: 55%)
]
```

If the rendered PDF shows things like `text(...)`, `line(...)`, `rgb(...)`, or `v(...)` as plain text, inspect the surrounding content block for missing `#` prefixes.

### 2) Don’t quote interpolated values that should be content

Wrong:

```typst
#text(style: "italic")["#nickname"]
```

Right:

```typst
#text(style: "italic")[#nickname]
```

If a variable should render as content, interpolate it directly.

### 3) If hex colors trigger `invalid number suffix`, prefer hashless hex

This project hit a Typst parser issue where `rgb("#7a6040")` failed in context with an `invalid number suffix` error.

Safe fallback:

```typst
rgb("7a6040")
```

If a quoted hex color with a leading `#` behaves strangely, remove the `#` or use numeric RGB components.

### 4) Default to printer-friendly colors unless asked otherwise

Prefer:
- `bg: white`
- dark neutral body text
- muted accent colors
- light fills for boxes and image placeholders

Avoid full-page dark fills and low-contrast accent-on-dark combinations unless the user explicitly wants a screen-first theme.

### 5) A successful compile is not enough

Always inspect a rendered preview. Check for:
- literal code appearing in output
- content overflow or clipping
- poor print contrast
- unexpected fallback fonts
- panel spacing or footer misalignment
- text density that makes a panel feel cramped even if it technically fits
- whether quick-reference or guidance content is still easy to scan at a glance
- whether a portrait or location image still reads clearly at the final printed size
- for trifolds, whether **both outside and inside pages** work as a pair
- whether any small diagram still reads clearly in the exported page PNG, not just in the PDF viewer

### 6) Portraits that look good alone may still fail in the sheet

The cover portrait slot is small and horizontal. A generated image can look strong in a full-size preview and still fail once placed in the leaflet.

Prefer:
- tight crops
- dominant faces or dominant location silhouettes
- strong black/white separation
- simple backgrounds
- a few large shapes

Avoid:
- lots of hands, props, smoke, or background detail
- soft grayscale rendering
- low-contrast midtone-heavy images
- full scenes when the slot really wants a portrait

## Checklists

### Template-change checklist

When `_leaflet-template.typ` changes:

- compile all `.typ` files in `characters/`, `game-master/`, and `cases/`
- if you add or remove a named template argument, update every `#show: leaflet.with(...)` call site
- verify each character file supplies suitable content for any new field, even if the template also provides a default
- confirm the 2-page output still renders correctly
- verify the outside page order remains `[BACK COVER | RULES | COVER]`
- verify the inside page order remains `[HOW TO PLAY | PERSONAL PARTICULARS | RULES]`
- verify the footer still anchors to the bottom of each panel
- verify page margins and `panel-h` still agree
- verify print friendliness on a white background

### Character-file checklist

When editing a specific `*-fox.typ` file:

- confirm the import still points to `../_leaflet-template.typ`
- confirm `#show: leaflet.with(...)` remains valid
- keep the palette consistent and print-friendly
- if using art, confirm the `portrait` asset path is correct and the image belongs in `assets/`
- make sure `description`, `particulars-items`, and `play-notes` fit the panel height
- compile the specific character PDF and preview it
- if creating a new character, confirm the sheet presents a vivid archetype, concrete Personal Particulars, and visible trade-offs rather than generic competence
- if using a portrait, confirm it still reads clearly in the final cover slot rather than only in the standalone source image

### General trifold QA checklist

For any leaflet:

- confirm both pages render correctly
- inspect outside and inside spreads separately
- check footer labels against actual panel contents
- check panel balance, not only technical fit
- make sure the result still scans well at print size
