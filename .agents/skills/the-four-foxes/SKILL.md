---
name: the-four-foxes
description: Support work on The Four Foxes game in this repository. Use when creating or revising characters, cases, game-master materials, rules text, image prompts, Typst leaflets or templates, assets, printer-friendly layout, or when compiling and previewing PDFs for this project.
compatibility: macOS with `typst`, `qlmanage`, and the `Linux Libertine` font installed.
---

# The Four Foxes Game Workflow

Project skill for working on The Four Foxes in this repository, including characters, cases, game-master materials, Typst leaflets, and image prompting.

## What this skill covers

This skill spans five closely related kinds of work:

1. **Game content and support materials**
   - outlining or revising cases, clues, suspects, twists, and scene structure
   - drafting GM-facing notes, prompts, and other material used to run the game
   - keeping new content tonally aligned with the setting and play style

2. **Character creation and revision**
   - inventing new Four Foxes characters, family variants, allies, and case-specific outsiders
   - revising names, nicknames, mottos, descriptions, play notes, and Personal Particulars
   - sharpening a character's flavour, constraints, and table usefulness

3. **Typst leaflet and template work**
   - editing `_leaflet-template.typ`
   - editing any `*-fox.typ` sheet
   - editing `gm-leaflet.typ` and `plot-leaflet.typ`
   - fixing syntax, layout, color, font, spacing, rendering issues, and compact rules-reference layouts

4. **Image prompt generation and art direction**
   - generating Gemini-ready or ChatGPT-ready prompts for character portraits in the Four Foxes house style
   - generating prompts for location art, scene plates, and atmospheric establishing images
   - refining prompts from iteration feedback after seeing actual generated images in the sheet layout
   - keeping art readable in the small printed cover image area

5. **Compile, preview, and visual QA**
   - compiling PDFs
   - checking printer-friendliness
   - rendering previews and inspecting the actual output for mistakes a successful compile will not catch

## Use this skill when

- working on anything related to The Four Foxes game in this repository
- editing `_leaflet-template.typ`
- editing any character sheet such as `larry-fox.typ`, `lester-fox.typ`, `moe-fox.typ`, or `sam-fox.typ`
- editing `gm-leaflet.typ` or `plot-leaflet.typ`
- creating a new character sheet, variant sibling, family friend, or case-specific ally
- creating or revising cases, clues, suspects, or GM-facing reference material
- drafting or revising a character's name, nickname, motto, description, play notes, or personal particulars
- generating or refining prompts for character portraits or location illustrations
- copying approved generated images into the project and wiring them into a character sheet
- compiling a leaflet to PDF
- fixing layout, color, font, or rendering issues
- making the output more printer-friendly
- checking whether a Typst change rendered correctly instead of only compiling

## Repository map and baseline facts

### Project map

- `_leaflet-template.typ` — shared trifold A4 landscape template
- `*-fox.typ` — character-specific files that import the template and override palette/content
- `gm-leaflet.typ` — GM-facing trifold about diceless play, scene framing, stakes, and improvisation
- `plot-leaflet.typ` — plot/case trifold about nodes, connections, graph growth, and continuity between cases
- `assets/` — generated portraits and other sheet-ready image assets
- output PDFs are compiled per character
- character sheets now use a single `particulars-items` list under the heading **Personal Particulars**
- the template accepts an optional `portrait` path for the cover image slot

The project uses this pattern:

```typst
#import "_leaflet-template.typ": leaflet

#show: leaflet.with(
  accent: rgb("49612f"),
  name: "Larry Fox",
  ...
)
```

### Baseline facts for this repo

- The leaflet is a **2-page A4 landscape trifold**.
- The template uses a **3-column grid** on each page.
- `panel-h` is **190mm**, which assumes A4 height `210mm` and vertical margins of `10mm` top and bottom.
- There is a single `pagebreak()` between the outside and inside faces. Preserve it unless you intentionally redesign the document.
- The template expects the font family **Linux Libertine**.
- The current preferred output is **printer-friendly**: white background, dark body text, muted accent colors, and light box fills.
- The cover panel contains a **wide horizontal portrait slot** that is only **68mm** tall. Images must read clearly at small printed size.
- The template can show a generated portrait through the `portrait` argument; if omitted, it falls back to the placeholder box.
- The inside center panel is **Personal Particulars**.
- Personal Particulars are written as a **single mixed list of concrete statements**.

## Rules leaflet guidance

Use this section when the task is about `gm-leaflet.typ`, `plot-leaflet.typ`, or another compact GM/reference trifold.

### 1) Keep leaflet ownership clear

The current split is:

- **GM leaflet** — self-contained guidance on **diceless play**, **telegraphing**, **stakes**, **scene framing**, and **meaningful improvisation**. It should teach how to run play at the table and let the players drive.
- **Plot leaflet** — self-contained guidance on **nodes**, **connections**, **graph growth**, **convergence**, and **continuity between cases**.

Do not blur these by default. In particular:
- the **GM leaflet should not explain the graph/node procedure**
- NPC/case/plot-construction procedures belong in the **plot leaflet** unless the user asks for a different split

### 2) Prefer procedure over encyclopedic lists

These trifolds are compact. Long generic inspiration tables often read worse than a short procedure.

Prefer:
- concise rules text
- short examples
- small diagrams
- case-specific material only when the document is actually a case handout or case trifold

Avoid filling a general-purpose rules trifold with long People / Places / Objects / Events lists unless the user specifically wants them.

### 3) Current plot-graph procedure

For the current game text, treat the graph as a live GM tool with these rules:

- when something becomes part of the story, **add a new unconnected node**
- this includes a GM-introduced clue or something the players decide matters
- when players **look for a clue, get information, or resolve a relevant stake**, **connect existing nodes**
- keep **unconnected nodes** between **0 and 2**
- keep **connections per node** usually at **1 to 2**
- **3 connections** is rare
- **4 connections never happens**
- if you are running out of sensible connections, **add more nodes** instead of overcrowding old ones

Convergence comes from **connecting new material to the existing graph**, not from over-planning hidden structure.

### 4) Continuity between cases

Do not use or introduce a separate **World Map** system unless the user explicitly asks for it.

The current continuity model is:
- reuse nodes from previous cases
- carry forward people, places, powers, and unresolved secrets that still have weight
- connect those nodes into the seed of the next case

### 5) Diagram guidance

Small diagrams are worth using when they explain procedure faster than prose.

For this project, prefer diagrams that are:
- compact
- readable at leaflet scale
- lighter than the surrounding prose
- a little **hand-drawn / sketched** rather than rigid UI boxes when showing graph examples

Use diagrams to clarify rules, not to decorate empty space.

## Character creation guidance

When creating a new Four Foxes character, optimize for **flavour, clarity, and playable gaps**, not roster balance.

### 1) Start from archetypes, then make the person

Begin with one or more strong stereotypes or archetypes, then add a twist.
Mix and match freely.

Good sources of inspiration:
- pulp adventure heroes
- hard-boiled detectives
- occult investigators
- silent-cinema and early film personas
- iconic movie or anime characters whose silhouette a player can immediately grasp
- older references are often stronger because they shaped later ones

Think in combinations like these:
- Moe: the grumpy older brother with a bit of Moe from the Three Stooges
- Larry: an all-action Indiana Jones type
- Sam: a hard-boiled detective with a pinch of Jackie Chan when drunk

The goal is a character the player can quickly imagine and inhabit.

### 2) Strong characters need strong gaps

New characters should feel complete and vivid, but they must not do everything alone.
Give them:
- exceptional capabilities
- hard limitations
- trade-offs
- conditions that change what they can do

It is fine if a group of player-chosen characters leaves some situations weak or uncovered.
Creativity and adaptation are part of the game.

### 3) Keep the core situations in mind

Use these as design prompts, not balance requirements:
1. **Investigation** — how this character finds clues or learns what is going on
2. **Conflicts** — social pressure, fights, intimidation, stalling, deception, or disruption
3. **Escaping and fleeing** — retreat, pursuit, traps, dangerous places, or environmental hazards

A character does not need to dominate all three.
What matters is that the sheet makes their leverage and their exposure obvious.

### 4) Personal Particulars must stay concrete

Write particulars as things the character can actually do in play.
Avoid vague labels like "sharp", "tough", "charming", or "observant" unless they are immediately turned into an actionable statement.

Prefer:
- "If sober and given enough time, he can tell exactly what recently happened in a place."
- "He cannot win a fight unless one of his brothers is in danger."
- "When in a life-threatening situation, he can run as fast as an Olympic champion."

Avoid:
- "He is sharp."
- "She is good in a crisis."
- "He is scary when angry."

### 5) Conditionals are good

Personal Particulars are often built around trade-offs, states, and circumstances.
Conditional wording is not a problem; it is part of the design.
Examples:
- sober vs drunk
- calm vs cornered
- armed vs unarmed
- alone vs backed by someone
- enough time vs no time
- protecting someone vs acting for himself

When the condition applies, the particular should be treated as absolute.

### 6) Use the current sheet language

Prefer a single heading:
- **Personal Particulars**

Do not split the list into positive and negative subsections by default.
The particulars list can freely mix capabilities, prohibitions, and conditionals.

### 7) Naming guidance

For new characters, draw inspiration from **silent cinema / mute cinema** names and screen personas.
Use names that feel immediate, memorable, and period-friendly.
A strong name should help the player picture the character before reading the sheet.

### 8) Allowed character relationships

New characters can be:
- an alternative version of one of the brothers
- a sister or other family variant with completely different particulars
- a family friend
- an acquaintance of the Foxes
- a helper brought in for one specific case
- another playable outsider who still feels natural in the setting

## Image prompt generation guidance

Use this section when the task is to create prompts for Gemini or another image model.

### House style for character portraits

Anchor portrait prompts to the **approved later Moe portrait**, not just to a generic pulp look.

Target this exact visual direction:
- **stark black-and-white pulp illustration**
- **bold brush-and-ink linework**
- **thick dramatic strokes**
- **heavy use of negative space**
- **strong graphic shapes**
- **deep blacks and clear light areas**
- **only sparse, purposeful crosshatching**
- **tight chest-up composition** with the face dominating the frame
- **very simple backgrounds** built from shadow masses, not scenery clutter
- **1920s period clothing**, but costume detail must stay secondary to the face
- the image should feel like a **lost 1920s newspaper adventure illustration or pulp interior plate**, not modern glossy concept art

This is the default house style for portraits because it survived the small horizontal cover slot much better than painterly or low-contrast alternatives.

### Lessons learned from Moe portrait prompting

When prompting portraits for sheet use:
1. Start with the **physical read first**: age, build, face shape, hair, facial hair, eyes, and expression.
2. Use **one strong visual anchor** when possible instead of several equal references.
3. Prefer **specific visible instructions** over broad mood language.
4. Optimize for **small-print readability**: big face, clean silhouette, minimal background, no fussy props.
5. If the first result looks good standalone but weak in the sheet, tighten the prompt toward **higher contrast, simpler shapes, fewer details, and less torso/hands**.
6. Keep the tone serious: **never parody, never celebrity likeness, never comedy**, even when using old-screen-persona inspiration.

### Character portrait prompt checklist

Include most of these in the prompt:
- horizontal format
- chest-up or very tight waist-up crop
- face large and readable
- black-and-white only when targeting the approved house style
- bold brush-and-ink linework
- thick dramatic strokes
- strong negative space and shadow masses
- deep blacks with limited midtones
- minimal background
- period-accurate 1920s wardrobe
- explicit avoid-list for photorealism, grayscale airbrush rendering, soft digital shading, clutter, text, extra characters, dominant props, and comedy/parody

### Location and establishing-shot prompt guidance

Use the same house style as the approved Moe portrait for locations unless the user asks otherwise:
- stark black-and-white pulp illustration
- bold brush-and-ink linework
- thick dramatic strokes
- heavy use of negative space
- strong graphic shapes with deep blacks and clear light areas
- readable architecture and foreground/background separation
- a few strong iconic props only
- moody 1920s detective / occult-adventure atmosphere
- should feel like a lost pulp interior illustration, not a modern cinematic matte painting

Good Four Foxes location subjects include:
- detective offices
- rain-slick alleys
- occult libraries
- museum storage rooms
- dockside warehouses
- railway platforms
- manor hallways
- underground ruins
- ritual chambers
- speakeasies or back rooms

For location prompts, specify:
1. the **type of place** and why it matters in play
2. the **time of day / lighting condition**
3. the **key readable objects or structures**
4. the **mood signal**: menace, secrecy, decay, occult danger, pursuit, or false safety
5. an avoid-list that bans clutter and tiny unreadable detail

## Recommended workflows

### For editing rules/reference trifolds

1. Read the whole target file, not only the panel you expect to change.
2. Identify what the leaflet owns conceptually before editing copy.
3. Keep each leaflet self-contained.
4. Favor short procedures and strong headings over long catalogs of examples.
5. Compile the leaflet.
6. Preview the full PDF and also export page PNGs when checking panel balance.
7. Inspect both the outside and inside pages.
8. Check whether the leaflet still scans quickly at print size.
9. If you add a diagram, make sure it explains a rule and still reads clearly when exported to PNG.

### For character creation or revision

Use this when the task is primarily about concept, writing, or gameable sheet content.

1. Pick 2 or 3 archetypes/stereotypes to combine.
2. Decide how the character relates to the Foxes, if at all.
3. Choose a name/nickname with silent-cinema flavour.
4. Draft a motto and a short description that make the character easy to picture.
5. Write **5 to 8 Personal Particulars** as grounded, actionable statements.
6. Check that the particulars show both leverage and gaps.
7. Check that at least some particulars engage investigation, conflict, or escape — but do not force balance.
8. If building a full sheet, add play notes that tell the player how to lean into the character's flavour.
9. If the task includes Typst implementation, continue with the sheet workflow below.

### For creating a new character sheet in Typst

1. Read `_leaflet-template.typ` and at least two existing character files.
2. Build the character from archetypes first, not from empty mechanics slots.
3. Draft the character in plain language before writing Typst.
4. Convert the concept into `name`, `nickname`, `description`, `motto`, `particulars-items`, and `play-notes`.
5. Keep the Personal Particulars concrete and table-usable.
6. If the sheet should include art, generate a portrait prompt that is optimized for the small horizontal cover slot.
7. Compile the new sheet.
8. Preview the PDF and check density, overflow, and readability.

### For generating and integrating a portrait image

1. Start from the character's physical read, not only their mood.
2. Write a Gemini-ready prompt using the portrait guidance above.
3. Generate the image and inspect it on its own.
4. Copy the approved image into `assets/`.
5. Pass `portrait: "assets/your-file.png"` in the character's `leaflet.with(...)` call.
6. Compile the affected sheet.
7. Export a preview PNG from the PDF and inspect the actual cover panel.
8. If it does not read well at small size, simplify the prompt and regenerate.

### For generating a location image prompt

1. Name the place and its role in the scenario.
2. Decide whether the image is for atmosphere, clue emphasis, or scene framing.
3. Pick 3 to 5 large visual elements only.
4. Use the same black-and-white pulp / negative-space house style unless asked otherwise.
5. Keep the composition readable at leaflet scale or handout scale.
6. Add an explicit avoid-list against clutter, tiny props, soft modern rendering, and text.

### For editing existing sheets or the shared template

1. Read the full Typst file(s) you will change.
2. If changing the template, also inspect at least one character file that uses it.
3. Make the smallest safe edit.
4. Compile the affected file.
5. If the template changed, compile all four character files.
6. Render a PNG preview from the PDF and inspect the result visually.
7. Look specifically for literal code showing up, overflow, bad contrast, and font warnings.

## Commands and preview tools

### Compile one leaflet

```bash
typst compile ./larry-fox.typ ./larry-fox.pdf
```

Replace `larry` as needed.

### Compile all non-template leaflets

```bash
./.agents/skills/the-four-foxes/scripts/compile-all.sh
```

### Render a preview image from a PDF on macOS

```bash
./.agents/skills/the-four-foxes/scripts/preview-pdf.sh ./larry-fox.pdf
```

This prints the preview file path. Read that image to inspect the rendered layout.

Use this for a fast whole-document preview.

### Export PDF pages as separate PNGs for closer inspection

```bash
mkdir -p /tmp/four-foxes-pages
magick -density 180 ./larry-fox.pdf /tmp/four-foxes-pages/larry-fox-%d.png
```

Use this when you need to inspect a specific page or panel, especially after changing inside-page content. After exporting, read the page image you care about (for example `larry-fox-1.png` for page 2).

### Check the required font

```bash
typst fonts | grep -i "Linux Libertine"
```

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

- compile all root-level `.typ` files except ones whose basename starts with `_`
- if you add or remove a named template argument, update every `#show: leaflet.with(...)` call site
- verify each character file supplies suitable content for any new field, even if the template also provides a default
- confirm the 2-page output still renders correctly
- verify the outside page order remains `[BACK COVER | RULES | COVER]`
- verify the inside page order remains `[HOW TO PLAY | PERSONAL PARTICULARS | RULES]`
- verify the footer still anchors to the bottom of each panel
- verify page margins and `panel-h` still agree
- verify print friendliness on a white background

### Rules-leaflet checklist

When editing `gm-leaflet.typ`, `plot-leaflet.typ`, or another compact rules trifold:

- confirm the leaflet stays self-contained
- confirm the content split is still correct:
  - GM leaflet = diceless play / stakes / scene framing / improvisation
  - plot leaflet = nodes / connections / graph growth / continuity
- remove long generic lists unless they are truly necessary
- prefer compact procedure and examples that scan well
- compile the affected leaflet
- preview the PDF and export page PNGs when needed
- inspect both pages, not just the edited panel
- check footer labels against the actual panel contents
- if using a graph example, keep it compact and readable at print size

### Character-file checklist

When editing a specific `*-fox.typ` file:

- confirm the import still points to `_leaflet-template.typ`
- confirm `#show: leaflet.with(...)` remains valid
- keep the palette consistent and print-friendly
- if using art, confirm the `portrait` asset path is correct and the image belongs in `assets/`
- make sure `description`, `particulars-items`, and `play-notes` fit the panel height
- compile the specific character PDF and preview it
- if creating a new character, confirm the sheet presents a vivid archetype, concrete Personal Particulars, and visible trade-offs rather than generic competence
- if using a portrait, confirm it still reads clearly in the final cover slot rather than only in the standalone source image

## References

- [Troubleshooting notes](references/troubleshooting.md)
