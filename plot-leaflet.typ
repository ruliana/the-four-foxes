// Plot Leaflet — The Four Foxes, 1926
// Building the Narrative
//
// PRINT INSTRUCTIONS
// ──────────────────
// 1. Print page 1 on one side of an A4 sheet (landscape).
// 2. Print page 2 on the reverse side (flip along the long edge).
// 3. Fold: right third folds in first, then left third folds over it.
//
// Page 1 — outside faces (left → right when sheet is flat):
//
//   ┌───────────────┬──────────────────────────┬───────────────┐
//   │  BACK COVER   │  THE PROCESS             │  COVER        │
//   │  player       │  seed · core · play ·    │  title +      │
//   │  attention    │  resolve · world map      │  the trick    │
//   └───────────────┴──────────────────────────┴───────────────┘
//
// Page 2 — inside faces (left → right when sheet is flat):
//
//   ┌───────────────────┬──────────────────────┬──────────────────────┐
//   │  NODE TYPES       │  QUICK DRAW          │  USING THE GRAPH     │
//   │  + seed shapes    │  lists               │  convergence ·       │
//   │                   │                      │  world map · powers  │
//   └───────────────────┴──────────────────────┴──────────────────────┘

// ── Palette ──────────────────────────────────────────────────────────────────

#let accent      = rgb("375c58")
#let dark-accent = rgb("253e3b")
#let dim         = rgb("6a6157")
#let footer-dim  = rgb("70675d")
#let text-col    = rgb("241d19")
#let bg          = white

// ── Document defaults ─────────────────────────────────────────────────────────

#set page(
  paper:   "a4",
  flipped: true,
  margin:  (x: 8mm, y: 10mm),
  fill:    bg,
)
#set text(
  font: "Linux Libertine O",
  fill: text-col,
  size: 9.15pt,
  lang: "en",
)
#set par(
  leading:  0.58em,
  justify:  true,
)

// ── Dimensions ────────────────────────────────────────────────────────────────

#let panel-h = 190mm
#let col-gap  = 6mm

// ── Primitive helpers ─────────────────────────────────────────────────────────

#let hrule(color: accent, length: 100%, weight: 0.65pt) = {
  line(length: length, stroke: weight + color)
}

#let section-head(title) = {
  v(0.58em)
  align(center)[
    #hrule(length: 100%, weight: 0.55pt)
    #v(0.18em)
    #text(font: "Linux Libertine Display O", size: 7.7pt, fill: dark-accent, tracking: 2.45pt)[#upper(title)]
    #v(0.12em)
    #hrule(length: 34%, weight: 0.4pt)
  ]
  v(0.3em)
}

#let rule-item(content) = pad(left: 0.45em, bottom: 0.2em)[
  #text(fill: accent)[§] #h(0.28em) #content
]

#let note-item(content) = pad(left: 0.45em, bottom: 0.22em)[
  #text(fill: accent)[—] #h(0.35em) #content
]

#let step-item(label, content) = pad(left: 0.45em, bottom: 0.26em)[
  #text(fill: dark-accent, weight: "bold")[#label] #h(0.3em) #content
]

#let panelled(main-content, footer-text) = grid(
  rows: (1fr, auto),
  main-content,
  {
    hrule(color: accent, weight: 0.72pt)
    v(0.22em)
    align(center)[
      #text(size: 6pt, fill: footer-dim, tracking: 1.8pt)[#upper(footer-text)]
    ]
  },
)

// ── Panel definitions ─────────────────────────────────────────────────────────

// Page 1 · right column ─── COVER
#let panel-cover = panelled(
  {
    align(center)[
      #v(0.65em)
      #text(size: 7.05pt, fill: dim, tracking: 4.9pt)[THE FOUR FOXES · 1926]
      #v(0.26em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.74em)
      #text(font: "Linux Libertine Display O", size: 17pt, fill: text-col, tracking: 0.65pt)[#upper[Building the]]
      #v(0.1em)
      #text(font: "Linux Libertine Display O", size: 17pt, fill: text-col, tracking: 0.65pt)[#upper[Narrative]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.15pt, fill: dim, style: "italic")["The mystery writes itself."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(0.9em)
    [
      #set text(size: 8.25pt)
      #set par(leading: 0.5em, justify: true)
      The plot graph is a pure GM tool. Players never see it. Yet when two
      connections lead to the same node — the same person appearing in
      separate threads, the same place named by unconnected witnesses — the
      investigation feels meticulously planned.

      #v(0.45em)

      It was not. That is the trick.

      #v(0.45em)

      The graph does not describe the story. It grows from the story the
      players choose to chase.
    ]
  },
  [The Four Foxes Detective Agency · 1926],
)

// Page 1 · left column ─── BACK COVER
#let panel-back-cover = panelled(
  {
    v(1fr)
    align(center)[
      #text(font: "Linux Libertine Display O", size: 7.6pt, fill: dark-accent, tracking: 3.7pt)[THE FOUR FOXES]
      #v(0.24em)
      #hrule(length: 58%, weight: 0.48pt)
      #v(0.7em)
      #text(size: 8.95pt, fill: text-col, style: "italic")[_Player attention makes things real._]
      #v(0.45em)
      #text(size: 8.95pt, fill: text-col, style: "italic")[_If they decide an NPC is suspicious,_\
        _add that person to the graph._\
        _If they pursue a lead you improvised,_\
        _give it a real connection._]
      #v(0.45em)
      #text(size: 8.95pt, fill: text-col, style: "italic")[_Their choices determine what matters._\
        _The graph follows where they look._]
      #v(0.55em)
      #hrule(length: 58%, weight: 0.48pt)
    ]
    v(1fr)
  },
  [Diceless Roleplaying · 1926],
)

// Page 1 · centre column ─── THE PROCESS
#let panel-process = panelled(
  {
    section-head("Building a Case")

    step-item("1. Seed.")[Draw three nodes. Connect them to each other. This is where the investigation begins — the visible surface of something hidden.]

    v(0.1em)
    step-item("2. Core.")[Before play, define the hidden truth at the centre: what really happened, who is truly behind it. Keep this to yourself. Every clue you add during play should be consistent with it.]

    v(0.1em)
    step-item("3. Play.")[When players investigate something, add it to the graph. Connect new nodes to existing ones. The graph grows from their choices, always pointing — openly or not — toward the core.]

    v(0.1em)
    step-item("4. Resolve.")[When players name the truth — when they reach the core — the case closes.]

    v(0.1em)
    step-item("5. Carry forward.")[Move persistent nodes to the World Map. Powers continue. People survive. Places remember. The next case inherits what this one uncovered.]

    section-head("Connections")
    [Connections between nodes are freeform labeled relationships. Write how two nodes relate: _hired_, _fears_, _owns_, _witnessed_, _is looking for_, _is hiding from_. No taxonomy — just the truth of the relationship.]
  },
  [Case Structure · The Four Foxes],
)

// Page 2 · left column ─── NODE TYPES + SEED SHAPES
#let panel-nodes = panelled(
  {
    section-head("Node Types")
    note-item[*People* — anyone who acts, knows, or wants something. Human or otherwise.]
    note-item[*Places* — anywhere that matters: a scene, a meeting point, a hiding spot.]
    note-item[*Objects* — anything physical that connects two or more threads.]
    note-item[*Events* — something that happened, or is about to. The backbone of reconstruction.]
    note-item[*Powers* — large forces with long-term goals. A cult, a foreign interest, something ancient. May appear in any case. Always persist.]

    section-head("Seed Shapes")
    [Three nodes are enough to begin. Named shapes to reach for fast:]
    v(0.3em)

    align(center)[#hrule(length: 80%, weight: 0.4pt)]
    v(0.2em)
    [*Classic Mystery* — Person + Place + Event]
    [#set text(size: 8.1pt, style: "italic", fill: dim)
    "Someone was somewhere when something happened."]
    v(0.3em)

    align(center)[#hrule(length: 80%, weight: 0.4pt)]
    v(0.2em)
    [*Tension* — Person + Person + Object]
    [#set text(size: 8.1pt, style: "italic", fill: dim)
    "Two people want the same thing — or want it gone. The object can be a pure McGuffin: what it is matters less than who wants it."]
    v(0.3em)

    align(center)[#hrule(length: 80%, weight: 0.4pt)]
    v(0.2em)
    [*Continuity* — World Map node + two new nodes]
    [#set text(size: 8.1pt, style: "italic", fill: dim)
    "A thread from a previous case returns in a new form."]
    v(0.2em)
    align(center)[#hrule(length: 80%, weight: 0.4pt)]
  },
  [Node Types · Seed Shapes · The Four Foxes],
)

// Page 2 · centre column ─── QUICK DRAW LISTS
#let panel-lists = panelled(
  {
    section-head("Quick Draw")
    [Draw one from any three lists to seed a case.]

    section-head("People")
    note-item[A grieving widow with sharp eyes]
    note-item[A corrupt beat cop who knows too much]
    note-item[A jazz musician who saw the wrong thing]
    note-item[An antiquities dealer with a sealed back room]
    note-item[A Prohibition agent working two sides]
    note-item[A society matron protecting a family secret]
    note-item[A foreign diplomat beyond jurisdiction]
    note-item[A street informant who is running scared]

    section-head("Places")
    note-item[A speakeasy basement with a second door]
    note-item[A waterfront warehouse cleared in a hurry]
    note-item[A locked private club, members only]
    note-item[A museum gallery after closing time]
    note-item[A Chinatown address that keeps moving]
    note-item[A mansion room sealed for thirty years]

    section-head("Objects")
    note-item[A coded ledger nobody claims]
    note-item[A stolen relic with no legal provenance]
    note-item[A photograph that should not exist]
    note-item[A sealed letter addressed to a dead man]
    note-item[A shipment manifest for something unnamed]

    section-head("Events")
    note-item[A murder staged as an accident]
    note-item[A disappearance after a séance]
    note-item[A deal that went badly wrong]
    note-item[A ritual that was interrupted]
  },
  [Quick Draw Lists · The Four Foxes],
)

// Page 2 · right column ─── USING THE GRAPH + WORLD MAP
#let panel-using = panelled(
  {
    section-head("The Convergence Effect")
    [When two separate threads both lead to the same node — the same suspect named by unconnected witnesses, the same place appearing in unrelated evidence — the investigation feels as if every clue was planted in advance.]
    v(0.32em)
    [It was not. The graph structure creates this effect from organic improvisation. Let it.]
    v(0.32em)
    rule-item[Keep every new node consistent with the core you defined before play. This is the only discipline required.]
    rule-item[When in doubt, connect the new node to something already on the graph. Convergence follows.]

    section-head("The World Map")
    [The World Map is not a separate system — it is whatever nodes the GM chooses to carry forward after a case closes.]
    v(0.32em)
    rule-item[At the end of each session, decide which nodes still have weight. Move them to the World Map.]
    rule-item[To begin the next case, pull one node from the World Map into the new seed. The story accumulates.]

    section-head("Powers")
    [Powers — cults, foreign interests, ancient forces, conspiracies that span decades — persist across every case. A Power's plan does not end because one of its members was caught.]
    v(0.32em)
    [A Power need not appear directly. Its footprint — a suspicious death, a missing object, a person acting under instructions — may be all the players ever see. Until it isn't.]
  },
  [The Graph · World Map · Powers · The Four Foxes],
)

// ── Render ────────────────────────────────────────────────────────────────────

// Page 1 — outside: [BACK COVER | PROCESS | COVER]
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  col-gap,
  rows:    (panel-h,),
  align:   top,
  panel-back-cover,
  panel-process,
  panel-cover,
)

#pagebreak()

// Page 2 — inside: [NODE TYPES | QUICK DRAW | USING THE GRAPH]
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  col-gap,
  rows:    (panel-h,),
  align:   top,
  panel-nodes,
  panel-lists,
  panel-using,
)
