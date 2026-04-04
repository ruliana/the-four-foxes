// _leaflet-template.typ
// Trifold A4-landscape leaflet template for The Four Foxes RPG.
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
//   │  BACK COVER   │  RULES: Snapping +       │  COVER        │
//   │  agency blurb │  Playing Diceless        │  name + image │
//   └───────────────┴──────────────────────────┴───────────────┘
//    ← back of      ← hidden (opens from back)   ← front face
//      leaflet                                      when folded
//
// Page 2 — inside faces (left → right when sheet is flat):
//
//   ┌───────────────────┬──────────────────────┬──────────────────────┐
//   │  DESCRIPTION      │  CAN & CAN'T         │  RULES: System       │
//   │  & MOTTO          │  (fear-tracking □)   │  fear + conditions   │
//   └───────────────────┴──────────────────────┴──────────────────────┘
//    ← inside left        ← inside centre         ← inside right

#let leaflet(
  // ── Colour palette (override per character) ─────────────────────────────
  accent:      rgb("#c8880a"),
  dim:         rgb("#a89060"),
  dark-accent: rgb("#8b5e05"),
  footer-dim:  rgb("#5a4020"),
  bg:          rgb("#1a1008"),
  text-col:    rgb("#e8d5a3"),
  motto-col:   rgb("#d4a84b"),

  // ── Character data ────────────────────────────────────────────────────────
  name:        "Character",
  nickname:    "Nickname",
  description: [Character description.],
  motto:       "Motto.",
  can-items:   (),
  cant-items:  (),

  // Required by #show: template.with(…)
  body,
) = {

  // ── Document defaults ────────────────────────────────────────────────────

  set page(
    paper: "a4",
    flipped: true,
    margin: (x: 8mm, y: 10mm),
    fill: bg,
  )
  set text(
    font: "Linux Libertine",
    fill: text-col,
    size: 9.5pt,
    lang: "en",
  )
  set par(leading: 0.55em)

  // Panel dimensions: A4 landscape (210 mm tall) minus top+bottom margins (20 mm).
  let panel-h  = 190mm
  let col-gap  = 6mm

  // ── Primitive helpers ────────────────────────────────────────────────────

  let hrule(color: accent) = line(length: 100%, stroke: 1.2pt + color)

  let section-head(title) = {
    v(0.5em)
    hrule()
    v(0.15em)
    text(size: 7.5pt, fill: dim, tracking: 2.5pt)[#upper(title)]
    v(0.2em)
  }

  // □ checkbox players cross off as fear mounts
  let can-item(content) = pad(left: 0.5em, bottom: 0.2em)[
    #text(fill: accent)[□] #h(0.2em) #content
  ]
  let cant-item(content) = pad(left: 0.5em, bottom: 0.2em)[
    #text(fill: accent)[□] #h(0.2em) #text(fill: rgb("#c07050"))[#content]
  ]
  let rule-item(content) = pad(left: 0.5em, bottom: 0.18em)[
    #text(fill: dim)[›] #h(0.2em) #content
  ]
  let fear-item(content) = pad(left: 0.5em, bottom: 0.15em)[
    #text(fill: rgb("#993333"))[✦] #h(0.2em) #content
  ]

  // Wraps panel content so the footer always sits at the bottom of the cell.
  // Relies on the outer grid row being a fixed height (panel-h).
  let panelled(main-content, footer-text) = grid(
    rows: (1fr, auto),
    main-content,
    {
      hrule(color: dark-accent)
      v(0.2em)
      align(center)[
        text(size: 6.5pt, fill: footer-dim, tracking: 1.5pt)[#footer-text]
      ]
    },
  )

  // ── Panel definitions ─────────────────────────────────────────────────────

  // Page 1 · right column ─── COVER
  let panel-cover = panelled(
    {
      align(center)[
        v(0.8em)
        text(size: 6.5pt, fill: dim, tracking: 5pt)[THE FOUR FOXES · 1926]
        v(0.3em)
        line(length: 70%, stroke: 0.5pt + dark-accent)
        v(0.7em)
        text(size: 21pt, weight: "bold", fill: accent)[#name]
        v(0.1em)
        text(size: 10pt, fill: dim, style: "italic")["#nickname"]
        v(0.6em)
        line(length: 70%, stroke: 0.5pt + dark-accent)
      ]
      v(0.5em)
      rect(
        width: 100%, height: 93mm,
        stroke: 0.8pt + dark-accent,
        fill: rgb("#0d0902"),
        radius: 2pt,
      )[
        #align(center + horizon)[
          #text(size: 7.5pt, fill: rgb("#3a2a10"), tracking: 1.5pt)[ILLUSTRATION]
        ]
      ]
    },
    [THE FOUR FOXES DETECTIVE AGENCY],
  )

  // Page 1 · left column ─── BACK COVER
  let panel-back-cover = panelled(
    {
      v(1fr)
      align(center)[
        text(size: 7.5pt, fill: dim, tracking: 4pt)[THE FOUR FOXES]
        v(0.3em)
        line(length: 55%, stroke: 0.5pt + dark-accent)
        v(0.6em)
        text(size: 9pt, fill: rgb("#7a6040"), style: "italic")[
          _…is a private detective agency_\
          _that ran from 1923 through 1951._
        ]
        v(0.4em)
        text(size: 9pt, fill: rgb("#7a6040"), style: "italic")[
          _Four brothers, sons of a renowned_\
          _explorer, ran the agency during_\
          _its whole existence._
        ]
        v(0.4em)
        text(size: 9pt, fill: rgb("#7a6040"), style: "italic")[
          _Every case was an extraordinary one._
        ]
        v(0.5em)
        line(length: 55%, stroke: 0.5pt + dark-accent)
      ]
      v(1fr)
    },
    [DICELESS RPG · 1926],
  )

  // Page 1 · centre column ─── RULES: Snapping + Playing Diceless
  let panel-rules-playing = panelled(
    {
      section-head("Snapping")
      [If *all* your can/can'ts already have a condition, you *snap* — you see
      the world differently and gain one new can/can't (something slightly
      supernatural, or just above human peak).]
      v(0.3em)
      [Optionally, instead of adding one, *remove a condition* by permanently
      dropping a can't.]
      v(0.3em)
      [Keep new can/can'ts aligned with your character's profile and motto.]

      section-head("Playing Diceless")
      [*Ask what your character thinks.* You don't share your character's
      skills. If they're a trained brawler, ask "do I think we can handle
      him?" — the GM gives you an honest picture. If they're an investigator,
      ask "what do I think is worth noting?" and the GM points you right.]
      v(0.3em)
      [*Pay attention to damage.* Damage is the GM signalling that your current
      approach isn't working. Your character won't die from a sudden explosion
      without warning — but they might die fighting a stronger opponent alone,
      ignoring mounting injuries. When the GM says the rocks are getting bigger,
      change course fast. Choosing the lesser evil is a big part of this game.]
    },
    [THE FOUR FOXES DETECTIVE AGENCY · DICELESS RPG],
  )

  // Page 2 · left column ─── DESCRIPTION & MOTTO
  let panel-description = panelled(
    {
      section-head("The Man")
      description
      v(0.7em)
      box(
        stroke: 0.8pt + dark-accent,
        inset: (x: 0.8em, y: 0.5em),
        fill: rgb("#0d0902"),
        radius: 2pt,
        width: 100%,
      )[
        #align(center)[
          #text(size: 10pt, style: "italic", fill: motto-col)["#motto"]
        ]
      ]
    },
    [THE FOUR FOXES DETECTIVE AGENCY · DICELESS RPG],
  )

  // Page 2 · centre column ─── CAN & CAN'T
  let panel-cans = panelled(
    {
      section-head("Can — cross a box each time fear strikes")
      for item in can-items { can-item(item) }

      section-head("Can't — cross a box each time fear strikes")
      for item in cant-items { cant-item(item) }

      v(0.4em)
      align(center)[
        text(size: 7.5pt, fill: dim, style: "italic")[
          _At the 3rd crossed box, add a condition and reset all fear._
        ]
      ]
    },
    [→ SEE RULES PANELS FOR THE FULL SYSTEM],
  )

  // Page 2 · right column ─── RULES: Can/Can't rule + Fear + Conditions
  let panel-rules-system = panelled(
    {
      section-head("Can and Can't")
      [You have no attributes or dice. Everything beyond an average human is on
      your list. *Can and can't are absolute.* If you _can_, nothing stops it.
      If you _can't_, nothing permits it. No danger kills suddenly — the GM
      always signals how things are going. *Pay close attention.*]

      section-head("Fear")
      [Fear strikes when you:]
      v(0.1em)
      fear-item[See humans dying.]
      fear-item[Are being hunted.]
      fear-item[See the supernatural.]
      fear-item[Risk your life willingly.]
      v(0.2em)
      [Each fear event *crosses off one can/can't* (good or bad) until a safe
      night's sleep. You may cross a bad one first — but fear keeps building.]

      section-head("Conditions")
      [When you cross the *third* can/can't, add a *condition* to any
      unconditioned ability. All fear then clears; you recover all can/can'ts.]
      v(0.2em)
      rule-item[*An object* you can lose — a hat, a book, a gun. (Tied to your body? Losing it costs a finger.)]
      rule-item[*An activity* — smoking, drinking, praying. Something you could run out of or be forced to skip.]
      rule-item[*A mannerism* — snapping fingers, a sign, kissing a ring. Something the player could forget to say.]
    },
    [→ CONTINUED ON BACK],
  )

  // ── Render ────────────────────────────────────────────────────────────────

  // Page 1 — outside: [BACK COVER | RULES: playing | COVER]
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter:  col-gap,
    rows:    (panel-h,),
    align:   top,
    panel-back-cover,
    panel-rules-playing,
    panel-cover,
  )

  pagebreak()

  // Page 2 — inside: [DESCRIPTION | CAN & CAN'T | RULES: system]
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter:  col-gap,
    rows:    (panel-h,),
    align:   top,
    panel-description,
    panel-cans,
    panel-rules-system,
  )

  body
}
