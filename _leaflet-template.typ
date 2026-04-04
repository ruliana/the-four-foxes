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
//   │               │                          │  + motto +    │
//   │               │                          │  description  │
//   └───────────────┴──────────────────────────┴───────────────┘
//    ← back of      ← hidden (opens from back)   ← front face
//      leaflet                                      when folded
//
// Page 2 — inside faces (left → right when sheet is flat):
//
//   ┌───────────────────┬──────────────────────┬──────────────────────┐
//   │  HOW TO PLAY      │  PERSONAL            │  RULES: System       │
//   │  + quick ref      │  PARTICULARS         │  damage + quirks     │
//   └───────────────────┴──────────────────────┴──────────────────────┘
//    ← inside left        ← inside centre         ← inside right

#let leaflet(
  // ── Colour palette (override per character) ─────────────────────────────
  accent:      rgb("6a5637"),
  dim:         rgb("6a6157"),
  dark-accent: rgb("4f3c28"),
  footer-dim:  rgb("70675d"),
  bg:          white,
  text-col:    rgb("241d19"),
  motto-col:   rgb("2d231d"),

  // ── Character data ────────────────────────────────────────────────────────
  name:        "Character",
  nickname:    "Nickname",
  description: [Character description.],
  motto:       "Motto.",
  portrait:    none,
  particulars-items: (),
  play-notes:  (),

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
    size: 9.15pt,
    lang: "en",
  )
  set par(
    leading: 0.58em,
    justify: true,
  )

  // Panel dimensions: A4 landscape (210 mm tall) minus top+bottom margins (20 mm).
  let panel-h = 190mm
  let col-gap = 6mm

  // ── Primitive helpers ────────────────────────────────────────────────────

  let hrule(color: accent, length: 100%, weight: 0.65pt) = {
    line(length: length, stroke: weight + color)
  }

  let section-head(title) = {
    v(0.58em)
    align(center)[
      #hrule(length: 100%, weight: 0.55pt)
      #v(0.18em)
      #text(font: "Linux Libertine Display", size: 7.7pt, fill: dark-accent, tracking: 2.45pt)[#upper(title)]
      #v(0.12em)
      #hrule(length: 34%, weight: 0.4pt)
    ]
    v(0.3em)
  }

  let particular-item(content) = pad(left: 0.45em, bottom: 0.24em)[
    #text(fill: accent)[—] #h(0.35em) #content
  ]
  let rule-item(content) = pad(left: 0.45em, bottom: 0.2em)[
    #text(fill: accent)[§] #h(0.28em) #content
  ]
  let play-item(content) = pad(left: 0.45em, bottom: 0.24em)[
    #text(fill: accent)[—] #h(0.35em) #content
  ]

  let motto-block(motto-text) = align(center)[
    #hrule(length: 100%, weight: 0.55pt)
    #v(0.42em)
    #text(font: "Linux Libertine Display", size: 10.7pt, style: "italic", fill: motto-col)[“#motto-text”]
    #v(0.28em)
    #text(size: 6.15pt, fill: dim, tracking: 2.05pt)[— #upper(name)]
    #v(0.42em)
    #hrule(length: 100%, weight: 0.55pt)
  ]

  // Wraps panel content so the footer always sits at the bottom of the cell.
  // Relies on the outer grid row being a fixed height (panel-h).
  let panelled(main-content, footer-text) = grid(
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

  // ── Panel definitions ─────────────────────────────────────────────────────

  // Page 1 · right column ─── COVER
  let panel-cover = panelled(
    {
      align(center)[
        #v(0.65em)
        #text(size: 7.05pt, fill: dim, tracking: 4.9pt)[THE FOUR FOXES · 1926]
        #v(0.26em)
        #hrule(length: 72%, weight: 0.5pt)
        #v(0.74em)
        #text(font: "Linux Libertine Display", size: 21.4pt, fill: text-col, tracking: 0.85pt)[#upper(name)]
        #v(0.18em)
        #text(size: 8.9pt, fill: dim, style: "italic")[“#nickname”]
        #v(0.62em)
        #hrule(length: 72%, weight: 0.5pt)
      ]
      v(0.55em)
      if portrait != none {
        block(
          width: 100%,
          height: 68mm,
          clip: true,
          stroke: 0.75pt + accent,
          fill: white,
          inset: 0pt,
        )[
          #align(center + horizon)[
            #image(portrait, height: 100%)
          ]
        ]
      } else {
        rect(
          width: 100%,
          height: 68mm,
          stroke: 0.75pt + accent,
          fill: white,
        )[
          #align(center + horizon)[
            #text(size: 6.9pt, fill: dim, tracking: 2.2pt)[PRESS PLATE]
          ]
        ]
      }
      v(0.7em)
      motto-block(motto)
      v(0.65em)
      [
        #set text(size: 8.25pt)
        #set par(leading: 0.5em, justify: true)
        #description
      ]
    },
    [The Four Foxes Detective Agency],
  )

  // Page 1 · left column ─── BACK COVER
  let panel-back-cover = panelled(
    {
      v(1fr)
      align(center)[
        #text(font: "Linux Libertine Display", size: 7.6pt, fill: dark-accent, tracking: 3.7pt)[THE FOUR FOXES]
        #v(0.24em)
        #hrule(length: 58%, weight: 0.48pt)
        #v(0.7em)
        #text(size: 8.95pt, fill: text-col, style: "italic")[_...is a private detective agency_\
          _that ran from 1923 through 1951._]
        #v(0.45em)
        #text(size: 8.95pt, fill: text-col, style: "italic")[_Four brothers, sons of a renowned_\
          _explorer, ran the agency during_\
          _its whole existence._]
        #v(0.45em)
        #text(size: 8.95pt, fill: text-col, style: "italic")[_Every case was an extraordinary one._]
        #v(0.55em)
        #hrule(length: 58%, weight: 0.48pt)
      ]
      v(1fr)
    },
    [Diceless Roleplaying · 1926],
  )

  // Page 1 · centre column ─── RULES: Player/Character + Playing Diceless
  let panel-rules-playing = panelled(
    {
      section-head("Player and Character")
      [When the rules say *you*, they mean *the player* deciding for the
      character. The player and the character are not the same person: the
      player chooses and asks questions, while the character may know, notice,
      or understand things the player doesn't.]
      v(0.32em)
      [When that matters, ask the GM directly: "what would my character know
      here?", "what do they notice?", or "does my character think this is a bad
      idea?" The GM answers honestly from the character's skills, instincts,
      and experience.]

      section-head("Playing Diceless")
      [There are no dice or hidden target numbers. Say what your character does
      and ask what they think, notice, or expect. If they're a trained
      brawler, ask "do I think we can handle him?" If they're an investigator,
      ask "what stands out to me?" Then choose what to risk.]
      v(0.32em)
      [The tension is not whether the attempt counts — it is what it costs, how
      long it takes, and what damage it invites if you keep pushing.]
    },
    [The Four Foxes Detective Agency · Diceless RPG],
  )

  // Page 2 · left column ─── HOW TO PLAY + QUICK REFERENCE
  let panel-play-guide = panelled(
    {
      section-head("How to Play This Fox")
      [Useful angles to lean on — *not* marching orders. Follow them when they help; ignore them when the moment asks for something stranger.]
      v(0.28em)
      for item in play-notes { play-item(item) }

      section-head("Quick Reference")
      rule-item[Ask what your character would know, notice, or expect before you commit.]
      rule-item[If a listed personal particular applies, it holds. If another blocks your approach, look for another angle, another cost, or rely on someone else.]
      rule-item[The real risk is usually *time, exposure, position,* or *damage*. Ask which one you're about to pay.]
      rule-item[Danger is signaled before it turns disastrous. Pay attention, then decide whether to keep pushing.]
      rule-item[Damage becomes quirks or perks. If ignored, it deepens and starts shaping your choices.]
    },
    [Play Advice + Quick System Reference],
  )

  // Page 2 · centre column ─── PERSONAL PARTICULARS
  let panel-particulars = panelled(
    {
      section-head("Personal Particulars")
      for item in particulars-items { particular-item(item) }
    },
    [See Rules Panels for the Full System],
  )

  // Page 2 · right column ─── RULES: Personal Particulars + Damage
  let panel-rules-system = panelled(
    {
      section-head("Personal Particulars")
      [You have no attributes or dice. Everything beyond an average human is on
      your list: exceptional capabilities, hard limits, and the conditions that
      change what your fox can do. *Personal particulars are absolute.* If one
      applies, it holds. If one says you cannot, you cannot force it. No danger
      kills suddenly — the GM always signals how things are going. *Pay close
      attention.*]

      section-head("Damage")
      [Damage can be physical or psychological. *Fear is mind damage.* Each
      time you take damage, add a *quirk or perk* that changes play: a limp, a
      weak grip, dizziness, hearing things, seeing movement at the edge of your
      vision, small hallucinations, a fixation, or a compulsion.]
      v(0.2em)
      [Damage is not a number to track, and there is no limit to how much you
      can carry. If you ignore it and keep pushing, it snowballs. The limp gets
      worse, the whisper gets louder, the compulsion gets harder to resist.]
      v(0.22em)
      rule-item[Let damage reshape how you act and what you dare.]
      rule-item[Ask the GM to sharpen or escalate ignored damage when the scene demands it.]
      rule-item[Choose damage that fits the fiction; repeated pressure can deepen the same wound instead of adding a neat new one.]
    },
    [Player Guidance on Back],
  )

  // ── Render ────────────────────────────────────────────────────────────────

  // Page 1 — outside: [BACK COVER | RULES: playing | COVER]
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: col-gap,
    rows: (panel-h,),
    align: top,
    panel-back-cover,
    panel-rules-playing,
    panel-cover,
  )

  pagebreak()

  // Page 2 — inside: [HOW TO PLAY | PERSONAL PARTICULARS | RULES: damage]
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: col-gap,
    rows: (panel-h,),
    align: top,
    panel-play-guide,
    panel-particulars,
    panel-rules-system,
  )

  body
}
