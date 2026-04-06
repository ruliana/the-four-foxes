// Case Leaflet — The Four Foxes, 1926
// The Engine Beneath the Black Tide
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

#let accent      = rgb("53697c")
#let dark-accent = rgb("37495a")
#let dim         = rgb("626b73")
#let footer-dim  = rgb("707780")
#let text-col    = rgb("1c1a1a")
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
      #text(font: "Linux Libertine Display", size: 15.8pt, fill: text-col, tracking: 0.55pt)[#upper[The Engine Beneath]]
      #v(0.08em)
      #text(font: "Linux Libertine Display", size: 15.8pt, fill: text-col, tracking: 0.55pt)[#upper[the Black Tide]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.1pt, fill: dim, style: "italic")["Phosphor wakes, broken hulls, brass lungs, and a vessel the newspapers cannot admit exists."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(1.05em)
    [
      #set text(size: 8.2pt)
      #set par(leading: 0.5em, justify: true)
      Ships return peeled open from below, and the survivors speak of a steel creature moving under the fog. Somewhere offshore, a gentleman commander wages private war from an impossible engine of brass, iron, and grievance.

      #v(0.45em)

      Use it when you want sea wonder, salvage greed, and the claustrophobic dread of going too far beneath the surface.
    ]
  },
  [Case Leaflet · The Four Foxes],
)

// Page 1 · left column ─── BACK COVER
#let panel-back-cover = panelled(
  {
    section-head("Other Seeds")
    [This adaptation can begin as adventure, conspiracy, or maritime myth. Change the starting trio and the same sea becomes a very different case.]

    v(0.22em)
    note-item[*Salvage Seed* — The Salvage Diver + The Wreck Field + The Mother-of-Pearl Chart. Closest to the novel: a hidden vessel, scientific wonder, and treasure drifting up from ruined ships.]
    note-item[*Political Seed* — The Admiralty Claims Office + The Harbor Laboratory + The Electrum Harpoon. A quieter case of cover-ups, patents, and every recovered fragment vanishing into official lockers.]
    note-item[*Mythic Seed* — The Drowned Cathedral + The Deep Choir + The Pressure Lantern. The engine becomes only one answer to what is moving below the black tide.]
  },
  [Other Seeds · Same Material · Different Cases],
)

// Page 1 · centre column ─── CASE FRAME
#let panel-premise = panelled(
  {
    section-head("Case Premise")
    [Cargo steamers are being crippled without warning, pearl boats come back empty with their hulls torn open, and salvagers whisper that something intelligent is choosing what sinks and what survives. The most dangerous explanation is also the most human: a hidden commander in a submersible fortress, armed enough to challenge shipping companies and bitter enough to try.]

    section-head("Tone")
    note-item[Cold spray, smoked brass, hissing valves, diving bells on wet timber, and a horizon that never feels empty.]
    note-item[Romantic wonder undercut by pressure, secrecy, and the knowledge that iron can still drown.]

    section-head("Events")
    note-item[*The Mail Steamer Broken Open* — passengers shivering on the rescue launch while the wreck wallows half cut apart and strangely selective in what it lost.]
    note-item[*The Pearl Auction Interrupted* — wet crates, armed bidders, and one lot that still smells of the trench.]
    note-item[*The Fog-Harbor Boarding* — a quiet launch alongside a larger ship, grapnels up, lamps hooded, and no shots until escape is impossible.]

    section-head("Powers")
    note-item[*The Exiled Commander* — wreck war-profiteers, imperial monopolies, and armed extraction wherever the sea can hide him.]
    note-item[*The Admiralty Claims Office* — classify the impossible, seize every recovered fragment, and keep the shipping lanes governable on paper.]
    note-item[*The Deep Choir* — draw iron, light, and dreaming minds steadily downward toward the trench.]
  },
  [Premise · Events · Powers],
)

// Page 2 · left column ─── PEOPLE
#let panel-people = panelled(
  {
    section-head("People")
    node-item("The Exiled Commander")[Black coat, sea-boots, clipped beard, and eyes lit by equal parts grief and contempt. He looks like a naval portrait that decided to walk out of its frame.]
    node-item("The Salvage Diver")[Rubber-scarred hands, flattened nose, permanent squint, and the heavy rolling gait of a man who trusts decks less than ropes.]
    node-item("The Natural Philosopher")[Perfect collar, notebook tied with oilcloth, and a face that brightens at danger only when it promises a specimen.]
    node-item("The Harbor Commissioner")[Broad shoulders under civilian tweed, salt in the moustache, and the exhausted manner of a man trying to govern a thing he cannot report.]
    node-item("The Pearl Smuggler")[Cream suit gone shiny at the elbows, pinkie ring, and a smile that reads welcoming until the counting starts.]
  },
  [People · Faces in the Case],
)

// Page 2 · centre column ─── PLACES
#let panel-places = panelled(
  {
    section-head("Places")
    node-item("The Breakwater Observatory")[Wind-shaken glass, damp charts, a brass telescope, and gulls beating at the panes. Official, lonely, and always one report behind the weather.]
    node-item("The Harbor Laboratory")[Formalin, wet canvas, labeled jars, and tiled floors permanently slick with seawater. Precise, expensive, and never free of the smell of rot.]
    node-item("The Wreck Field")[Floating spars, oil rainbow, lifebelts, and a cold chop that keeps offering up fragments not listed on any manifest.]
    node-item("The Tidal Cave Dock")[Stone vaulting, hidden moorings, echoing chains, and an inward-running swell that makes every arrival feel clandestine.]
    node-item("The Drowned Cathedral")[Columns visible only when the water turns green, schools of silver fish, and bells no surface hand could ring. Vast, patient, and inhumanly serene.]
  },
  [Places · Tones and Atmosphere],
)

// Page 2 · right column ─── OBJECTS
#let panel-objects = panelled(
  {
    section-head("Objects")
    node-item("The Mother-of-Pearl Chart")[A folding sea chart backed with shell veneer, iridescent in patches, marked over with depth figures in three different inks.]
    node-item("The Electrum Harpoon")[A long balanced spear with barbs like fish-bones, pale metal fittings, and a cable eye rubbed smooth from repeated use.]
    node-item("The Pressure Lantern")[A squat brass lamp in wire cagework, its glass thick as a bottle bottom and clouded with salt from within.]
    node-item("The Diving Helmet")[Hammered copper, small round viewports, old dents left unpolished, and leather seals that still smell faintly of whale oil.]
    node-item("The Black Glass Logbook")[A narrow ledger in waterproof covers, each page dark and glossy until the writing catches the light in silver strokes.]
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
