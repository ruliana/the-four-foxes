// Case Leaflet — The Four Foxes, 1926
// Thunder Over Pell Street
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

#let accent      = rgb("4d6b62")
#let dark-accent = rgb("304841")
#let dim         = rgb("5f6663")
#let footer-dim  = rgb("6a716d")
#let text-col    = rgb("211b18")
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
      #text(font: "Linux Libertine Display", size: 16.4pt, fill: text-col, tracking: 0.75pt)[#upper[Thunder Over]]
      #v(0.08em)
      #text(font: "Linux Libertine Display", size: 16.4pt, fill: text-col, tracking: 0.75pt)[#upper[Pell Street]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.1pt, fill: dim, style: "italic")["Lantern silk, tong pistols, wedding drums, and an old storm demanding a bride."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(1.05em)
    [
      #set text(size: 8.2pt)
      #set par(leading: 0.5em, justify: true)
      A wedding procession breaks apart under gunfire and thunder. The missing bride is wanted by tong collectors, municipal raiders, and a courtier from another age who means to step back into flesh before dawn.

      #v(0.45em)

      Use it when you want crowded streets, comic bravado, and a hidden sorcery rotting beneath civic order.
    ]
  },
  [Case Leaflet · The Four Foxes],
)

// Page 1 · left column ─── BACK COVER
#let panel-back-cover = panelled(
  {
    section-head("Other Seeds")
    [Because this case borrows from a film, the same district can produce very different mysteries depending on which three nodes reach the table first.]

    v(0.22em)
    note-item[*Wedding Seed* — The Runaway Bride + Mott Street Wedding Hall + The Jade Marriage Seal. The closest version to the film: kidnappers, impossible weather, and a ceremony that must not be completed.]
    note-item[*Tong Seed* — The Tong Treasurer + The Funeral Gunfight + The Storm Bottle. A rougher underworld case of debts, kidnappings, and ritual leverage bought with street muscle.]
    note-item[*Occult Seed* — The Herbalist Cellar + The Magistrate in Exile + The Black-Lacquer Spectacles. A slower case of false funerals, hidden courts, and old gods trying to rent bodies in the modern city.]
  },
  [Other Seeds · Same Material · Different Cases],
)

// Page 1 · centre column ─── CASE FRAME
#let panel-premise = panelled(
  {
    section-head("Case Premise")
    [A bride disappears from a public procession in Chinatown, and the quarter turns instantly theatrical: tong guards at every doorway, police wagons circling for a raid, and whispers that the missing girl is meant for a marriage no priest would recognize. Beneath the racket lies an ancient court of wind and thunder trying to wear the city like a borrowed suit.]

    section-head("Tone")
    note-item[Rain on lacquered brick, ceiling-fan hum, funeral paper turning to paste in the gutter, and telephone wires singing before lightning lands.]
    note-item[Public chaos in the foreground; old ceremonial dread just behind it.]

    section-head("Events")
    note-item[*The Wedding Procession Shattered* — cymbals, silk banners, pistols in the crowd, and the bride gone between one drumbeat and the next.]
    note-item[*The Funeral Gunfight* — mourners ducking for cover while the dead are used as a screen for a snatch and exchange.]
    note-item[*The Rooftop Storm Rite* — wind rising above the telegraph lines, lanterns blowing out, and a marriage altar set under open sky.]

    section-head("Powers")
    note-item[*The Storm Court* — regain flesh, title, and obedience by completing a marriage under thunder.]
    note-item[*The River Tongs* — own the quarter's routes, debts, and safe houses by deciding who may pass alive.]
    note-item[*The Municipal Vice Office* — turn panic into raids, informants, and permanent leverage over the district.]
  },
  [Premise · Events · Powers],
)

// Page 2 · left column ─── PEOPLE
#let panel-people = panelled(
  {
    section-head("People")
    node-item("The Runaway Bride")[Powder-pale, sharp-eyed, and still wearing pearls in one ear. Her wedding silk is torn for speed, not tragedy, and she keeps looking upward when thunder speaks.]
    node-item("The Tong Treasurer")[A narrow man in a precise suit, carrying a folded umbrella like a sceptre. His smile is polite, brief, and never meant for equals.]
    node-item("The Magistrate in Exile")[Yellowed skin stretched fine over old bones, immaculate nails, cloud-embroidered sleeves, and spectacles dark enough to hide whether he still has human eyes.]
    node-item("The Herbalist Widow")[Gray hair pinned hard, ink on the cuffs, camphor on the hands. She looks tired until anyone lies in her shop, and then she looks dangerous.]
    node-item("The Police Interpreter")[Round hat, city shoes, notebook always ready. He carries himself like a civil servant and watches rooms like a man paid twice.]
  },
  [People · Faces in the Case],
)

// Page 2 · centre column ─── PLACES
#let panel-places = panelled(
  {
    section-head("Places")
    node-item("Mott Street Wedding Hall")[Red paper banners, steaming platters, family altars, and the smell of roast duck turning sharp with cordite. Festive one instant, violated the next.]
    node-item("Pell Street Arcade")[Wet paving, hanging signs, caged songbirds, and too many upstairs windows. Narrow, public, and perfect for losing or finding someone.]
    node-item("The Herbalist Cellar")[Dry roots overhead, porcelain jars in ranks, bitter smoke, and one locked inner door that the walls seem to lean away from.]
    node-item("The Telephone Exchange Roof")[Water towers, wires, brick parapets, and a city spread out below like a listening machine. Exposed, windy, and too close to the sky.]
    node-item("The River Tunnel Dock")[Black water under stone arches, coal grit, ropes swollen with damp, and launches that come and go without registry lights.]
  },
  [Places · Tones and Atmosphere],
)

// Page 2 · right column ─── OBJECTS
#let panel-objects = panelled(
  {
    section-head("Objects")
    node-item("The Jade Marriage Seal")[A thumb-sized cylinder of dark green jade, cold even in a closed hand, carved with cloud-bands and one tiny crack through the base.]
    node-item("The Storm Bottle")[A clear medicine flask wired in brass, half full of gray vapor, warm at the neck, and faintly bright whenever the weather turns.]
    node-item("The Black-Lacquer Spectacles")[Round dark lenses in a fine folding frame, glossy as wet ink, with silver hinges worked into miniature thunderheads.]
    node-item("The Paper Funeral Effigy")[A pasted paper servant in painted silks, nearly man-height, singed at the edges, and stiffened by damp until it feels disturbingly heavy.]
    node-item("The Brass Thunder Key")[A long ceremonial key with jagged teeth, scorched finger-marks, and a ring shaped like a coiling dragon around an empty hole.]
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
