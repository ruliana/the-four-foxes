// Case Leaflet — The Four Foxes, 1926
// The Ark Beneath the Sand
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
//   │  BACK COVER   │  CASE PREMISE            │  COVER        │
//   │  tone +       │  atmosphere + powers     │  title +      │
//   │  teaser       │                          │  case hook     │
//   └───────────────┴──────────────────────────┴───────────────┘
//
// Page 2 — inside faces (left → right when sheet is flat):
//
//   ┌───────────────────┬──────────────────────┬──────────────────────┐
//   │  PEOPLE           │  PLACES              │  OBJECTS             │
//   │  faces and roles  │  tone and mood       │  descriptions only   │
//   └───────────────────┴──────────────────────┴──────────────────────┘

// ── Palette ──────────────────────────────────────────────────────────────────

#let accent      = rgb("7a6040")
#let dark-accent = rgb("55402a")
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
  font: "Linux Libertine",
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
#let col-gap = 6mm

// ── Primitive helpers ─────────────────────────────────────────────────────────

#let hrule(color: accent, length: 100%, weight: 0.65pt) = {
  line(length: length, stroke: weight + color)
}

#let section-head(title) = {
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

#let note-item(content) = pad(left: 0.45em, bottom: 0.22em)[
  #text(fill: accent)[—] #h(0.35em) #content
]

#let node-item(title, content) = pad(left: 0.1em, bottom: 0.34em)[
  #text(font: "Linux Libertine Display", size: 7.05pt, fill: dark-accent, tracking: 1.7pt)[#upper(title)]
  #v(0.05em)
  #line(length: 28%, stroke: 0.28pt + accent)
  #v(0.12em)
  #text(size: 8.08pt)[#content]
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
      #text(font: "Linux Libertine Display", size: 16.4pt, fill: text-col, tracking: 0.75pt)[#upper[The Ark Beneath]]
      #v(0.08em)
      #text(font: "Linux Libertine Display", size: 16.4pt, fill: text-col, tracking: 0.75pt)[#upper[the Sand]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.1pt, fill: dim, style: "italic")["Dust, scripture, aircraft fuel, and a box that should have stayed buried."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(1.05em)
    [
      #set text(size: 8.2pt)
      #set par(leading: 0.5em, justify: true)
      A sacred chest, an old desert map, rival diggers, and foreign agents with official backing. This case wants crowded streets, rooftop escapes, snapped loyalties, and the slow realization that some relics are not lost — only waiting.

      #v(0.45em)

      Use it when you want pulp adventure pushed right up against holy dread.
    ]
  },
  [Case Leaflet · The Four Foxes],
)

// Page 1 · left column ─── BACK COVER
#let panel-back-cover = panelled(
  {
    section-head("Other Seeds")
    [Because this case borrows from a film, the method is worth showing plainly: change the three starting nodes and the same material produces a very different mystery.]

    v(0.22em)
    note-item[*Adventure Seed* — The Archaeologist + The Desert City + The Sealed Ark. Rival diggers, foreign agents, a buried chamber, and a sacred chest. This is the version closest to the film.]
    note-item[*Night Seed* — The Café Proprietor + The Museum Heist + The Bronze Medallion. The desert expedition will lead back to the museum: collectors, thieves, rooftop chases, and a relic changing hands across one feverish night.]
    note-item[*Occult Seed* — The University Office + The Ancient Covenant + The Crystal Staff Head. A slower case of forged translations, hidden societies, and revelation arriving in libraries before it ever reaches the sand.]
  },
  [Other Seeds · Same Material · Different Cases],
)

// Page 1 · centre column ─── CASE FRAME
#let panel-premise = panelled(
  {
    section-head("Case Premise")
    [A relic from scripture has resurfaced in fragments: notes, testimony, a stolen medallion, and the claim that a buried chamber lies somewhere under impossible amounts of sand. Everyone near it speaks as if treasure and judgment were the same thing.]

    section-head("Tone")
    note-item[Heat shimmer, brass fittings, stale tomb air, and engines that sound too fragile to fly.]
    note-item[Adventure in the foreground; sacrilege close behind it.]

    section-head("Events")
    note-item[*The Museum Heist* — a replacement artifact, traps, and a relic vanishing into private hands.]
    note-item[*The Desert Dig* — a buried chamber opened at exactly the wrong moment, under exactly the wrong banner.]
    note-item[*The Airfield Transfer* — engines idling, armed trucks, a sealed chest, and a departure timed to outrun questions.]

    section-head("Powers")
    note-item[*The Foreign Occult Bureau* — recover the relic first, carry it home under armed escort, and turn awe into state power.]
    note-item[*The Ancient Covenant* — remain sealed, feared, and buried until violation forces judgment.]
    note-item[*The Patrons of Empire* — own the impossible thing before a rival nation, museum, or collector can display it.]
  },
  [Premise · Events · Powers],
)

// Page 2 · left column ─── PEOPLE
#let panel-people = panelled(
  {
    section-head("People")
    node-item("The Archaeologist")[Sunburned, tired-eyed, and never entirely clean. He looks like a lecturer until the fists, rope burns, and old scars make the truth obvious.]
    node-item("The Café Proprietor")[Dark hair, steady hands, a stubborn mouth, and the posture of someone who has already survived the worst night in the quarter. A firearm is never far away.]
    node-item("The Rival Antiquarian")[Cream linen, polished boots, perfect manners, and a smile that belongs on a jackal. He is elegant in camps, tombs, embassies, and firing lines alike.]
    node-item("The Desert Excavator")[Broad, weathered, warm-eyed, and built like a laborer who learned patience before language. He reads stone, sand, and people quickly.]
    node-item("The Foreign Officer")[Immaculate uniform, gloves in the heat, and a voice too calm for the things he orders. He treats sacred ground like seized property.]
  },
  [People · Faces in the Case],
)

// Page 2 · centre column ─── PLACES
#let panel-places = panelled(
  {
    section-head("Places")
    node-item("The University Office")[Book dust, rain on the window, chipped statuary, and crates no one has opened in years. Respectability stretched over obsession.]
    node-item("The Courtyard Café")[Shade cloth, bitter coffee, card smoke, ceiling fans, and conversations that go quiet one table too early. Public, intimate, and full of watching eyes.]
    node-item("The Desert City")[White walls, awnings, flies, market cries, rooftop silhouettes, and heat so severe it makes everyone seem half unreal.]
    node-item("The Buried Chamber")[Painted stone, stale air, stacked centuries, and the unnerving feeling that every warning was written for exactly this moment.]
    node-item("The Desert Airfield")[Canvas wings, fuel stink, blown sand, shouted orders, and cargo that leaves before anyone agrees they saw it. Harsh, temporary, and exposed.]
  },
  [Places · Tones and Atmosphere],
)

// Page 2 · right column ─── OBJECTS
#let panel-objects = panelled(
  {
    section-head("Objects")
    node-item("The Gold Idol")[A squat golden figure with deep eye sockets, delicate hands, and a stillness that feels patient rather than peaceful.]
    node-item("The Bronze Medallion")[A palm-sized disk, worn smooth at the edges, engraved on both faces, and pierced clean through the middle.]
    node-item("The Crystal Staff Head")[A small bronze fitting clasping a clear stone lens, fine enough to look ceremonial and precise enough not to be decorative.]
    node-item("The Sealed Ark")[A rectangular cedar coffer plated in dull gold, borne on long poles, its lid crowded with winged figures and hammered script.]
    node-item("The Desert Map Fragments")[Brittle paper, faded measurements, marginal notes in several hands, and sand ground permanently into every fold.]
  },
  [Objects · Relics and Evidence],
)

// ── Render ────────────────────────────────────────────────────────────────────

// Page 1 — outside: [BACK COVER | PREMISE | COVER]
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  col-gap,
  rows:    (panel-h,),
  align:   top,
  panel-back-cover,
  panel-premise,
  panel-cover,
)

#pagebreak()

// Page 2 — inside: [PEOPLE | PLACES | OBJECTS]
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter:  col-gap,
  rows:    (panel-h,),
  align:   top,
  panel-people,
  panel-places,
  panel-objects,
)
