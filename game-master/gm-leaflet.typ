// GM Leaflet — The Four Foxes, 1926
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
//   │  BACK COVER   │  THE PRINCIPLES          │  COVER        │
//   │  diceless     │  distilled list          │  title +      │
//   │  philosophy   │                          │  philosophy   │
//   └───────────────┴──────────────────────────┴───────────────┘
//
// Page 2 — inside faces (left → right when sheet is flat):
//
//   ┌───────────────────┬──────────────────────┬──────────────────────┐
//   │  TELEGRAPHING     │  THE GM'S MOVES      │  GM TOOLS            │
//   │  & PERCEPTION     │  yes · stakes ·      │  particulars ·       │
//   │                   │  costs               │  scene design        │
//   └───────────────────┴──────────────────────┴──────────────────────┘

// ── Palette ──────────────────────────────────────────────────────────────────

#let accent      = rgb("4d3a5c")
#let dark-accent = rgb("352840")
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

#let note-item(content) = pad(left: 0.45em, bottom: 0.24em)[
  #text(fill: accent)[—] #h(0.35em) #content
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
      #text(font: "Linux Libertine Display O", size: 21.4pt, fill: text-col, tracking: 0.85pt)[#upper[Game Master]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.15pt, fill: dim, style: "italic")["Fit the story to the players."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(0.9em)
    [
      #set text(size: 8.25pt)
      #set par(leading: 0.5em, justify: true)
      This is not a game you plan for — it is a game you steer. No dice, no randomness — only decisions and their costs.

      #v(0.45em)

      The players make choices. Your job is to make every choice feel real: present what is at stake, follow where they go, and let the consequences land.

      #v(0.45em)

      Every tool in this leaflet exists to serve that craft.
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
      #text(size: 8.95pt, fill: text-col, style: "italic")[_This is a diceless game._]
      #v(0.45em)
      #text(size: 8.95pt, fill: text-col, style: "italic")[_There are no rolls to hide behind._\
        _Every consequence is a choice —_\
        _made in the open, at the table,_\
        _with everyone watching._]
      #v(0.45em)
      #text(size: 8.95pt, fill: text-col, style: "italic")[_You do not plan what happens._\
        _You plan what is at stake._\
        _The players drive._\
        _Your job is to follow_\
        _and make every choice matter._]
      #v(0.55em)
      #hrule(length: 58%, weight: 0.48pt)
    ]
    v(1fr)
  },
  [Diceless Roleplaying · 1926],
)

// Page 1 · centre column ─── THE PRINCIPLES
#let panel-principles = panelled(
  {
    section-head("The Principles")
    rule-item[*No dice means no luck buffer.* Uninformed consequences feel unfair. Telegraphing and stating stakes are not optional.]
    rule-item[*Telegraph everything.* Sensory cues, direct warnings, vague unease. No true ambushes. Everything that appears has a reason.]
    rule-item[*Always say yes.* State the cost first, then let the player commit. Informed failure is good play.]
    rule-item[*Stakes are ugly choices.* The lesser of two evils is the most interesting decision. Set stakes that force a real choice.]
    rule-item[*Control perception, not decisions.* What characters see, hear, and know is your territory. What players decide is not.]
    rule-item[*Combine Particulars like puzzle mechanics.* Design the scene; let players surprise you with how they solve it.]
    rule-item[*Every cost opens a new complication.* Pressure builds until the core tension resolves. The story snowballs.]
    rule-item[*The occult finds the brothers.* You do not introduce it — it arrives. NPCs are surprised. The brothers are not.]
    rule-item[*Everything here is a guideline.* Fun is the only rule. Adapt to your players and your table.]
  },
  [Game Master Reference · The Four Foxes],
)

// Page 2 · left column ─── TELEGRAPHING & PERCEPTION
#let panel-telegraphing = panelled(
  {
    section-head("Telegraphing")
    [Signal before things turn dangerous. Use sensory cues:]
    v(0.28em)
    note-item[_You heard something._]
    note-item[_Something moved at the corner of your eye._]
    note-item[_The air feels wrong here._]
    note-item[_You don't feel the situation is right._]
    v(0.1em)
    [For physical danger, be direct but not certain: "this will hurt badly — it might break something." Give them the worst case. Let them decide.]
    v(0.32em)
    [There are no true ambushes. If something appears in the story, it has a reason. Everything is Chekhov's gun: place it deliberately, pay it off.]

    section-head("Perception & Mind Damage")
    [You control what characters see, hear, and know — not what players decide. Keep those distinct.]
    v(0.32em)
    [For mind damage, narrate perceptions that may or may not be real. You can tell the player: *"some of what I am describing are hallucinations."* The tension is that they never know which ones.]
    v(0.32em)
    [In a world where the occult is real, the line between hallucination and supernatural truth is exactly where the horror lives. Use it.]
  },
  [Telegraphing · Perception · Mind Damage],
)

// Page 2 · centre column ─── THE GM'S MOVES
#let panel-moves = panelled(
  {
    section-head("Always Yes")
    [Never say no. Even when a Particular says *"cannot,"* there is always a cost version. State what will go wrong before the player commits — then let them decide.]
    v(0.32em)
    [Informed failure is good play. When everyone at the table knows the attempt is going to go badly, that shared anticipation is part of the fun. The player chose it knowing the cost.]

    section-head("Stakes & Choices")
    [The goal is not success or failure — it is an *interesting choice.* Ugly choices, the lesser of two evils, force real decisions and create memorable moments.]
    v(0.32em)
    [Set stakes clearly before commitment. Vague consequences feel arbitrary. Concrete ones feel fair, even when they hurt.]

    section-head("Costs & Snowball")
    [Every action has a cost: time, exposure, position, or damage. When a cost is paid, a new complication opens immediately. Never let the pressure fully drop until the core tension resolves.]
    v(0.32em)
    rule-item[Action → cost → new complication. Keep the chain alive.]
    rule-item[Damage that is ignored deepens. The limp gets worse. The whisper gets louder. Let it escalate.]
    rule-item[Relief between snowballs is earned, not given. Make the resolution feel like a breath.]
  },
  [Always Yes · Stakes · Costs · Snowball],
)

// Page 2 · right column ─── GM TOOLS
#let panel-tools = panelled(
  {
    section-head("Particulars as Scene Design")
    [Pick two or more Particulars — from the same character or different ones — and ask: *what scene makes this combination interesting?*]
    v(0.32em)
    [Like combining mechanics in a puzzle game, the interaction creates possibility. You design the space; players surprise you with how they move through it.]
    v(0.32em)
    [Spotlight is natural and welcome. Some scenes belong to one fox. Some belong to all of them. Both are good. Every Particular should get its moment across the session.]

    section-head("Building Scenes")
    [Every scene needs one thing at stake. Make it visible before anyone acts: a decision that cannot wait, a clock that is running, a consequence already in motion.]
    v(0.32em)
    [Frame toward choice, not description. Tell the players what they see, what they sense, what is at risk. Then stop and let them drive.]
    v(0.32em)
    [When a scene goes somewhere you did not expect, that is the game working. Follow it. Your job is not to redirect the players toward what you planned — it is to make what they choose feel real.]
    v(0.32em)
    [Cut when the decisive moment is over. Move to the consequence immediately. Do not linger.]
  },
  [Particulars · Scene Design · Building Scenes],
)

// ── Render ────────────────────────────────────────────────────────────────────

// Page 1 — outside: [BACK COVER | PRINCIPLES | COVER]
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  col-gap,
  rows:    (panel-h,),
  align:   top,
  panel-back-cover,
  panel-principles,
  panel-cover,
)

#pagebreak()

// Page 2 — inside: [TELEGRAPHING | MOVES | TOOLS]
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  col-gap,
  rows:    (panel-h,),
  align:   top,
  panel-telegraphing,
  panel-moves,
  panel-tools,
)
