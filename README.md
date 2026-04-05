# The Four Foxes

A small Typst project for **printer-friendly, trifold character leaflets** for a **diceless pulp-detective RPG** set in **1926**.

Each leaflet is a self-contained A4 landscape sheet that folds into a compact handout with:
- a front cover and portrait
- short play guidance
- the character's **Personal Particulars**
- the core diceless rules needed at the table

The current cast is the four Fox brothers: **Larry, Lester, Moe, and Sam**.

<p align="center">
  <img src="./assets/readme/moe-leaflet-thumbnail.png" alt="Preview of the Moe Fox trifold leaflet" width="900" />
</p>

## At a glance

- **Format:** 2-page A4 landscape trifold
- **Tooling:** [Typst](https://typst.app/)
- **Theme:** 1920s detective / pulp adventure / occult mystery
- **System style:** diceless, fiction-first, character-driven
- **Output:** printable PDF leaflets

## The foxes

| Character | Hook | Source | PDF |
| --- | --- | --- | --- |
| **Larry Fox** / *Bold Larry* | explorer, bruiser, relic-hunter, gloriously reckless | [`larry-fox.typ`](./larry-fox.typ) | [`larry-fox.pdf`](./larry-fox.pdf) |
| **Lester Fox** / *Smooth Lester* | charmer, liar, improviser, social infiltrator | [`lester-fox.typ`](./lester-fox.typ) | [`lester-fox.pdf`](./lester-fox.pdf) |
| **Moe Fox** / *Grumpy Moe* | protective elder brother, occult instincts, stubborn grit | [`moe-fox.typ`](./moe-fox.typ) | [`moe-fox.pdf`](./moe-fox.pdf) |
| **Sam Fox** / *Cunning Sam* | sharp detective, dangerous drunk, sees what others miss | [`sam-fox.typ`](./sam-fox.typ) | [`sam-fox.pdf`](./sam-fox.pdf) |

## How the game reads

The leaflets are built around a few simple ideas:

- There are **no dice**.
- Players ask what their character would know, notice, or expect.
- **Personal Particulars are absolute**: if one applies, it holds.
- The real pressure is usually **time, exposure, position, or damage**.
- Damage becomes quirks, habits, compulsions, injuries, or other fiction-first consequences.

In other words: this is about strong fictional positioning, vivid limitations, and characters who solve problems in very different ways.

## Repository layout

```text
.
├── _leaflet-template.typ        # shared trifold layout and rules panels
├── larry-fox.typ                # Larry leaflet definition
├── lester-fox.typ               # Lester leaflet definition
├── moe-fox.typ                  # Moe leaflet definition
├── sam-fox.typ                  # Sam leaflet definition
├── assets/                      # portrait art and README preview images
├── *.pdf                        # compiled printable outputs
└── .agents/skills/four-foxes-leaflets-and-characters/
    ├── SKILL.md                 # project workflow and design guidance
    ├── references/
    └── scripts/
```

## Build

### Requirements

- `typst` installed and available in `PATH`
- the **Linux Libertine** font family installed
- optional: `qlmanage` on macOS for quick preview generation

Check that the font is available:

```bash
typst fonts | grep -i "Linux Libertine"
```

### Compile one leaflet

```bash
typst compile ./larry-fox.typ ./larry-fox.pdf
```

### Compile all leaflets

```bash
./.agents/skills/four-foxes-leaflets-and-characters/scripts/compile-all.sh
```

### Preview a generated PDF on macOS

```bash
./.agents/skills/four-foxes-leaflets-and-characters/scripts/preview-pdf.sh ./larry-fox.pdf
```

That script renders a large PNG preview into a temporary directory and prints the output path.

## Printing

These leaflets are designed to be printed as a **two-sided A4 landscape trifold**.

1. Print **page 1** on one side.
2. Print **page 2** on the reverse side.
3. Use **long-edge flipping**.
4. Fold the **right third inward first**, then fold the **left third over it**.

The layout and print order are documented directly in [`_leaflet-template.typ`](./_leaflet-template.typ).

## Creating a new fox

Every character file follows the same pattern: import the shared template, then provide palette, copy, portrait, particulars, and play notes.

```typst
#import "_leaflet-template.typ": leaflet

#show: leaflet.with(
  accent: rgb("5b6941"),
  dark-accent: rgb("465132"),
  name: "Larry Fox",
  nickname: "Bold Larry",
  portrait: "assets/larry-fox.png",
  particulars-items: (
    [He can answer any question about ancient history or artifacts...],
    [He cannot lie convincingly, no matter the consequences.],
  ),
  play-notes: (
    [Treat obstacles as invitations.],
  ),
)
```

The shared template handles:
- the 3-panel outside spread
- the 3-panel inside spread
- cover portrait placement
- rules text
- section styling
- footer treatment and print-safe spacing

## Design principles

A few recurring principles shape the repo:

- **Strong archetypes beat balance.**
- **Concrete particulars beat vague traits.**
- **Conditionals are good.** Sober vs. drunk, alone vs. protected, enough time vs. no time.
- **Printer-friendly output matters.** White background, dark text, muted accents.
- **Small-image readability matters.** Portraits are designed to survive a short horizontal cover slot.

## Project docs

If you want the full workflow for editing, art direction, troubleshooting, and QA, start here:

- [`.agents/skills/four-foxes-leaflets-and-characters/SKILL.md`](./.agents/skills/four-foxes-leaflets-and-characters/SKILL.md)
- [`.agents/skills/four-foxes-leaflets-and-characters/references/troubleshooting.md`](./.agents/skills/four-foxes-leaflets-and-characters/references/troubleshooting.md)

Those docs cover:
- character creation guidance
- Typst gotchas
- image prompting for the house style
- compile and preview workflow
- printer-friendliness checks

## Notes on assets

The repository is configured to treat generated PDFs and image assets as binary files via Git LFS rules in [`.gitattributes`](./.gitattributes).

If you clone the repo and want the compiled PDFs and portrait art locally, make sure your Git LFS setup is working.

---

Built in Typst for a very specific, moody little 1926 detective game.