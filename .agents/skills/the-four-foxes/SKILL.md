---
name: the-four-foxes
description: Support work on The Four Foxes game in this repository. Use when creating or revising characters, cases, game-master materials, rules text, image prompts, Typst leaflets or templates, assets, printer-friendly layout, or when compiling and previewing PDFs for this project.
compatibility: macOS with `typst`, `qlmanage`, and the `Linux Libertine` font installed.
---

# The Four Foxes Skill

Project skill for working on The Four Foxes in this repository.

This skill now routes specialized work into smaller reference documents. Read this file first, then read the relevant reference docs fully before changing content or code.

## Use this skill when

- working on anything related to The Four Foxes game in this repository
- editing `_leaflet-template.typ`
- editing any `*-fox.typ` sheet
- editing `gm-leaflet.typ` or `plot-leaflet.typ`
- creating or revising cases, clues, suspects, twists, node lists, or GM-facing material
- drafting or revising a character's name, nickname, motto, description, play notes, or Personal Particulars
- generating or refining prompts for character portraits or location illustrations
- copying approved generated images into the project and wiring them into a character sheet
- compiling a leaflet to PDF
- fixing layout, color, font, spacing, rendering, overflow, or printer-friendliness issues
- checking whether a Typst change rendered correctly instead of only compiling

## First principles

- Read the full target Typst file before editing it.
- If the task is content-heavy, read the relevant reference docs before drafting.
- Preserve the repo's printer-friendly output unless the user explicitly asks otherwise.
- Compile after meaningful Typst changes.
- Preview rendered output after compiling; a successful compile is not enough.
- Keep new material aligned with the game's 1926 pulp-detective / occult-mystery tone.
- Prefer concise, playable, table-usable writing over encyclopedic filler.

## Repository entry points

- `_leaflet-template.typ` — shared trifold A4 landscape template
- `*-fox.typ` — character-specific sheets using the template
- `gm-leaflet.typ` — GM-facing leaflet about diceless play and scene framing
- `plot-leaflet.typ` — plot/case leaflet about nodes, connections, graph growth, and continuity
- `assets/` — generated portraits and other sheet-ready images
- `references/` — this skill's guidance documents
- `scripts/compile-all.sh` — compile all non-template leaflets
- `scripts/preview-pdf.sh` — render a PNG preview from a PDF on macOS

## Read these references for the matching task

### For repository structure, layout assumptions, or shared template facts
Read:
- `references/repository-map.md`

### For case creation, case trifolds, node writing, or media-inspired case adaptation
Read:
- `references/case-design.md`
- `references/repository-map.md`
- `references/typst-layout-and-qa.md` if you will edit Typst or compile

### For GM leaflet or plot leaflet work
Read:
- `references/rules-leaflets.md`
- `references/repository-map.md`
- `references/typst-layout-and-qa.md`

### For character creation or revision
Read:
- `references/character-design.md`
- `references/repository-map.md`
- `references/typst-layout-and-qa.md` if you will edit Typst or compile

### For portrait or location image prompts
Read:
- `references/image-direction.md`
- `references/repository-map.md` if the prompt is for a sheet asset

### For compiling, previewing, layout debugging, template edits, or render QA
Read:
- `references/typst-layout-and-qa.md`
- `references/troubleshooting.md`

## Fast baseline facts

- The default output is a **2-page A4 landscape trifold**.
- The layout uses a **3-column grid** on each page.
- `panel-h` is **190mm**, matching A4 height minus `10mm` top and bottom margins.
- There is normally exactly one `pagebreak()` between the outside and inside pages.
- The project uses **Linux Libertine**.
- Preferred output is **printer-friendly**: white background, dark text, muted accents.
- Character sheets use **Personal Particulars** as a single mixed list under `particulars-items`.
- The cover portrait slot is short and horizontal, so art must survive small printed size.

## Reference index

- [Repository map and baseline facts](references/repository-map.md)
- [Case design](references/case-design.md)
- [Rules leaflets](references/rules-leaflets.md)
- [Character design](references/character-design.md)
- [Image direction](references/image-direction.md)
- [Typst layout and QA](references/typst-layout-and-qa.md)
- [Troubleshooting](references/troubleshooting.md)
