# The Four Foxes

A Typst project for **printer-friendly trifold leaflets** for a **diceless pulp-detective RPG** set in **1926**.

This repository is organized around **content ownership** rather than a fixed list of current documents. The goal is to keep the project easy to grow: new characters, new GM material, and new cases should have an obvious place to live without the README needing constant maintenance.

<p align="center">
  <img src="./assets/readme/moe-leaflet-thumbnail.png" alt="Preview of a Four Foxes trifold leaflet" width="900" />
</p>

## At a glance

- **Format:** 2-page A4 landscape trifolds
- **Tooling:** [Typst](https://typst.app/)
- **Theme:** 1920s detective / pulp adventure / occult mystery
- **System style:** diceless, fiction-first, character-driven
- **Output:** printable PDFs for players and the GM

## What lives here

The project currently supports three main kinds of material:

- **characters** — playable foxes and other character leaflets
- **game-master** — GM-facing guidance, procedure, and reference material
- **cases** — mystery-specific scenario leaflets and reusable case content

Around those, the repository also keeps:

- **assets** — portraits, preview images, and other art
- **a shared leaflet template** at the repository root — used by character leaflets and any other content that benefits from a common trifold structure
- **project docs and agent guidance** under `.agents/` — workflow notes, references, QA guidance, and helper scripts

## Repository organization

```text
.
├── characters/    # playable character leaflets and their compiled PDFs
├── game-master/   # GM-facing procedure, play guidance, and reference leaflets
├── cases/         # case-specific mysteries, scenario material, and compiled PDFs
├── assets/        # portraits, preview images, and other artwork
├── _leaflet-template.typ
└── .agents/       # project workflow docs, references, and helper scripts
```

## Why it is organized this way

This structure follows a few simple principles.

### 1. Organize by purpose, not by the current cast

The repo should still make sense when it grows beyond the current set of foxes and beyond the first few cases. Folder names describe **what a document is for**, not which exact files happen to exist today.

### 2. Keep content ownership clear

Each folder has a clear job:

- **characters/** owns player-facing character sheets
- **game-master/** owns GM procedure and table-running guidance
- **cases/** owns mystery-specific material

This prevents overlap and helps keep each leaflet focused.

### 3. Separate shared structure from authored content

The shared template stays at the root because it is infrastructure, not content. Character and scenario files can depend on it, while still keeping authored material grouped by purpose.

### 4. Keep source and output close together

Compiled PDFs live next to the source files they come from. That makes it easy to browse a folder and immediately see both the editable source and the printable output.

### 5. Let the README stay stable as the project grows

The README describes the **system of organization**, not an ever-expanding inventory of filenames. That keeps it useful over time.

## Content principles

The organization reflects the design of the game itself.

### Characters are about vivid leverage and vivid gaps

Character leaflets should present strong archetypes, concrete Personal Particulars, and obvious limitations. They are not built for balance charts; they are built for memorable play.

### GM guidance and case procedure stay distinct

GM-facing advice should focus on **running diceless play**: telegraphing danger, framing scenes, stating stakes, and following consequences.

Case material should focus on **what the current mystery contains**: people, places, objects, events, powers, and the relationships that emerge during play.

### Compact leaflets should teach action, not collect trivia

These are small printable handouts. They work best when they communicate procedure, tone, and table-usable content quickly.

### Printer-friendly output is a first-class concern

The repo favors white backgrounds, dark text, muted accents, and layouts that still read well when physically printed and folded.

### Shared formatting should support many leaflets without flattening their identity

A common template keeps the project coherent, but each leaflet should still feel like it owns its voice and purpose.

## How the game reads

The leaflets are built around a few recurring ideas:

- There are **no dice**.
- Players ask what their character would know, notice, or expect.
- **Personal Particulars are absolute**: if one applies, it holds.
- The real pressure is usually **time, exposure, position, or damage**.
- Damage becomes quirks, habits, compulsions, injuries, or other fiction-first consequences.

In other words: this is a game of strong fictional positioning, specific capabilities, and costs that matter because everyone can see them coming.

## Working in the repo

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
typst compile --root . ./characters/<leaflet>.typ ./characters/<leaflet>.pdf
```

Use the same pattern for files in `game-master/` or `cases/`.

### Batch compile and preview

The project also includes helper scripts for compiling all leaflets and rendering PDF previews. Those live with the project workflow docs under `.agents/`.

## Adding new material

When adding something new, choose its folder by **what role it plays at the table**:

- add it to **characters/** if it is a player-facing character leaflet
- add it to **game-master/** if it teaches the GM how to run play or manage procedure
- add it to **cases/** if it belongs to a specific mystery or scenario

A few house rules help keep the structure clean:

- keep compiled PDFs beside their source files
- keep artwork in `assets/`
- reuse the shared template when a new leaflet wants the standard trifold format
- keep documents narrow in purpose rather than trying to make one leaflet do everything

## Project docs

If you want the full editing workflow, layout guidance, troubleshooting notes, and agent instructions, start in:

- `.agents/skills/the-four-foxes/`

That area contains reference docs for:

- character design
- case design
- GM and rules leaflets
- image direction
- Typst QA and troubleshooting
- helper scripts for compile and preview workflows

## Notes on assets

The repository is configured to treat generated PDFs and image assets as binary files via Git LFS rules in `.gitattributes`.

If you clone the repo and want the compiled PDFs and portrait art locally, make sure your Git LFS setup is working.

---

Built in Typst for a very specific, moody little 1926 detective game.
