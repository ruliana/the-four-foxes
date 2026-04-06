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
//   │  attention    │  resolve · carry fwd      │  the trick    │
//   └───────────────┴──────────────────────────┴───────────────┘
//
// Page 2 — inside faces (left → right when sheet is flat):
//
//   ┌───────────────────┬──────────────────────┬──────────────────────┐
//   │  NODE TYPES       │  THE LIVE GRAPH      │  USING THE GRAPH     │
//   │  + seed shapes    │  two moves ·         │  convergence ·       │
//   │                   │  constraints         │  powers · carry fwd  │
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
    step-item("3. Play.")[Add a node whenever something enters the story. Connect nodes when players investigate or resolve a stake. The graph grows from their choices, always pointing — openly or not — toward the core.]

    v(0.1em)
    step-item("4. Resolve.")[When players name the truth — when they reach the core — the case closes.]

    v(0.1em)
    step-item("5. Carry forward.")[When the case closes, take any node that still has weight — a Power, a survivor, an unresolved secret. Connect it into the seed of the next case. The story accumulates.]

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
    [*Continuity* — Node from a past case + two new nodes]
    [#set text(size: 8.1pt, style: "italic", fill: dim)
    "A thread from before returns in a new form."]
    v(0.2em)
    align(center)[#hrule(length: 80%, weight: 0.4pt)]
  },
  [Node Types · Seed Shapes · The Four Foxes],
)

// Page 2 · centre column ─── THE LIVE GRAPH
#let panel-lists = panelled(
  {
    section-head("The Two Moves")
    [Every change to the graph is one of two moves:]
    v(0.3em)
    note-item[*Add a node* — something enters the story. The GM introduces a clue; a player's attention lands on a person, place, or object. Write it as a new node. Leave it unconnected.]
    v(0.1em)
    note-item[*Connect nodes* — something becomes clear. Players investigate a lead, gather information, or resolve a stake. Draw a connection and label it: #emph[hired, owns, witnessed, fears, is hiding from].]

    section-head("Live Constraints")
    rule-item[*Unconnected nodes: 0–2.* Suspense lives in loose ends — but too many open threads lose the shape of the investigation.]
    rule-item[*Connections per node: 1–2.* A third is possible. Four never happens.]
    rule-item[*When nodes are full,* add a new unconnected node to reopen the graph.]

    section-head("Example")

    let _nw = 32mm
    let _nh = 9mm
    let _gh = 16mm
    let _gv = 10mm
    let _paper = rgb("f2f0ee")

    let _n(t, nm) = block(width: _nw + 0.8mm, height: _nh + 0.8mm)[
      #place(top + left, dx: 0.45mm, dy: 0.35mm)[
        #box(
          width: _nw,
          height: _nh,
          fill: _paper,
          stroke: 0.28pt + dark-accent,
          radius: 1.9pt,
        )[]
      ]
      #place(top + left, dx: 0mm, dy: 0mm)[
        #box(
          width: _nw,
          height: _nh,
          fill: none,
          stroke: 0.42pt + dark-accent,
          radius: 1.35pt,
        )[]
      ]
      #place(top + left, dx: 2.2mm, dy: 1.05mm)[
        #text(size: 5.8pt, fill: dim, tracking: 0.7pt)[#upper(t)]
        #linebreak()
        #text(size: 7.8pt, fill: text-col)[#nm]
      ]
    ]
    let _f(t, nm) = block(width: _nw + 0.8mm, height: _nh + 0.8mm)[
      #place(top + left, dx: 0.45mm, dy: 0.35mm)[
        #box(
          width: _nw,
          height: _nh,
          fill: white,
          stroke: (paint: dim, dash: "dashed", thickness: 0.24pt),
          radius: 1.9pt,
        )[]
      ]
      #place(top + left, dx: 0mm, dy: 0mm)[
        #box(
          width: _nw,
          height: _nh,
          fill: none,
          stroke: (paint: dim, dash: "dashed", thickness: 0.42pt),
          radius: 1.35pt,
        )[]
      ]
      #place(top + left, dx: 2.2mm, dy: 1.05mm)[
        #text(size: 5.8pt, fill: dim, tracking: 0.7pt)[#upper(t)]
        #linebreak()
        #text(size: 7.8pt, fill: dim)[#nm]
      ]
    ]
    let _lbl(s) = text(size: 6.2pt, fill: dim, style: "italic")[#s]

    block(height: _nh * 2 + _gv + 2mm, width: 100%)[
      #place(top + left, dx: 0mm,        dy: 0mm)[#_n("person", "Viktor Slade")]
      #place(top + left, dx: _nw + _gh,  dy: 0mm)[#_n("place",  "Pier 17")]
      #place(top + left, dx: 0mm,        dy: _nh + _gv)[#_n("event",  "The Break-in")]
      #place(top + left, dx: _nw + _gh,  dy: _nh + _gv)[#_f("person", "Rose Kwan")]

      // H connection: Viktor Slade → Pier 17
      #place(top + left, dx: _nw - 0.2mm, dy: _nh / 2 + 0.15mm)[
        #line(length: _gh + 0.6mm, stroke: 0.36pt + dim)
      ]
      #place(top + left, dx: _nw + 0.35mm, dy: _nh / 2 - 0.15mm)[
        #line(length: _gh - 0.9mm, stroke: 0.22pt + dim)
      ]
      #place(top + left, dx: _nw + 1.5mm, dy: _nh / 2 - 3.8mm)[
        #_lbl[was seen at]
      ]

      // V connection: Viktor Slade → The Break-in
      #place(top + left, dx: _nw / 2 + 0.15mm, dy: _nh)[
        #line(start: (0pt, 0pt), end: (0pt, _gv + 0.35mm), stroke: 0.36pt + dim)
      ]
      #place(top + left, dx: _nw / 2 - 0.2mm, dy: _nh + 0.3mm)[
        #line(start: (0pt, 0pt), end: (0pt, _gv - 0.65mm), stroke: 0.22pt + dim)
      ]
      #place(top + left, dx: _nw / 2 + 1.5mm, dy: _nh + _gv / 2 - 2mm)[
        #_lbl[witnessed]
      ]
    ]

    v(0.2em)
    align(center)[
      #text(size: 6.2pt, fill: dim, style: "italic")[dashed border = unconnected node]
    ]
  },
  [The Live Graph · The Four Foxes],
)

// Page 2 · right column ─── USING THE GRAPH
#let panel-using = panelled(
  {
    section-head("The Convergence Effect")
    [When two separate threads both lead to the same node — the same suspect named by unconnected witnesses, the same place appearing in unrelated evidence — the investigation feels as if every clue was planted in advance.]
    v(0.32em)
    [It was not. The graph structure creates this effect from organic improvisation. Let it.]
    v(0.32em)
    rule-item[Convergence comes from connection, not planning. The effect appears because new nodes keep touching something already on the graph.]
    rule-item[When in doubt, connect the new node to something already on the graph. Paths converge on their own.]

    section-head("Powers")
    [Powers — cults, foreign interests, ancient forces, conspiracies that span decades — persist across every case. A Power's plan does not end because one of its members was caught.]
    v(0.32em)
    [A Power need not appear directly. Its footprint — a suspicious death, a missing object, a person acting under instructions — may be all the players ever see. Until it isn't.]

    section-head("Between Cases")
    [When a case closes, some nodes keep weight: a Power still active, a witness who survived, a secret that went unresolved. Take those nodes into the seed of your next case. Connect them to the new starting nodes.]
    v(0.32em)
    [Their choices determine what persists. The graph follows where they look — and remembers what they left behind.]
  },
  [The Graph · Powers · Between Cases · The Four Foxes],
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
