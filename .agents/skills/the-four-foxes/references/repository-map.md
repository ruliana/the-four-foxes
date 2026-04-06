# Repository Map and Baseline Facts

Use this reference when you need structure, layout assumptions, or repo-wide facts.

## Project map

- `_leaflet-template.typ` — shared trifold A4 landscape template
- `characters/*-fox.typ` — character-specific files that import the template and override palette and content
- `game-master/gm-leaflet.typ` — GM-facing trifold about diceless play, scene framing, stakes, and improvisation
- `game-master/plot-leaflet.typ` — plot/case trifold about nodes, connections, graph growth, and continuity between cases
- `cases/*.typ` — case-specific trifolds and mystery material
- `assets/` — generated portraits and other sheet-ready image assets
- output PDFs are compiled next to each leaflet source file
- character sheets use a single `particulars-items` list under the heading **Personal Particulars**
- the template accepts an optional `portrait` path for the cover image slot

The project usually uses this pattern:

```typst
#import "../_leaflet-template.typ": leaflet

#show: leaflet.with(
  accent: rgb("49612f"),
  name: "Larry Fox",
  ...
)
```

## Baseline facts for this repo

- The leaflet format is a **2-page A4 landscape trifold**.
- The template uses a **3-column grid** on each page.
- `panel-h` is **190mm**, assuming A4 height `210mm` and vertical margins of `10mm` top and bottom.
- There is normally a single `pagebreak()` between the outside and inside faces. Preserve it unless you intentionally redesign the document.
- The template expects the font family **Linux Libertine**.
- The preferred output is **printer-friendly**: white background, dark body text, muted accent colors, and light fills.
- The cover panel contains a **wide horizontal portrait slot** only **68mm** tall. Images must read clearly at small printed size.
- The template can show a generated portrait through the `portrait` argument; if omitted, it falls back to a placeholder box.
- The inside center panel of a character sheet is **Personal Particulars**.
- Personal Particulars are written as a **single mixed list of concrete statements**.

## Important page orders

For character sheets built from `_leaflet-template.typ`:

- outside page order is `[BACK COVER | RULES | COVER]`
- inside page order is `[HOW TO PLAY | PERSONAL PARTICULARS | RULES]`

For custom trifolds, preserve clear page-order comments and keep outside vs inside spreads obvious in the source.

## House expectations

- Favor readable, compact, print-safe layouts.
- Use restrained typography and muted color.
- New documents should feel like period handouts, not modern UI.
- If a document is for case content, node lists should be legible at leaflet scale and should scan quickly.
