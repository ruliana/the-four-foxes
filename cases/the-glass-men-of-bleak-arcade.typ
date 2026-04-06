// Case Leaflet — The Four Foxes, 1926
// The Glass Men of Bleak Arcade
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

#let accent      = rgb("655b73")
#let dark-accent = rgb("453d52")
#let dim         = rgb("69636f")
#let footer-dim  = rgb("77717e")
#let text-col    = rgb("201d22")
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
      #text(font: "Linux Libertine Display", size: 16.2pt, fill: text-col, tracking: 0.65pt)[#upper[The Glass Men]]
      #v(0.08em)
      #text(font: "Linux Libertine Display", size: 16.2pt, fill: text-col, tracking: 0.65pt)[#upper[of Bleak Arcade]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.1pt, fill: dim, style: "italic")["Wet tram rails, bottled memories, porcelain hands, and manufactured souls trying not to die on schedule."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(1.05em)
    [
      #set text(size: 8.2pt)
      #set par(leading: 0.5em, justify: true)
      Several artificial persons have fled the laboratory that made them after learning how little life was allotted to them. The city is told they are dangerous defects; the truth is that they are asking the wrong men for more time.

      #v(0.45em)

      Use it when you want rain-slick noir, moral pursuit, and the eerie dignity of something built to imitate a human deciding not to.]
  },
  [Case Leaflet · The Four Foxes],
)

// Page 1 · left column ─── BACK COVER
#let panel-back-cover = panelled(
  {
    section-head("Other Seeds")
    [This one can be a manhunt, a doomed romance, or a labor conspiracy. Start elsewhere and the case stops resembling its source almost at once.]

    v(0.22em)
    note-item[*Manhunt Seed* — The Copy Hunter + Bleak Arcade + The Celluloid Identity Card. Closest to the film: fugitives in the rain, a hunter on their heels, and the question of who counts as a person.]
    note-item[*Romance Seed* — The Runaway Chorus Girl + The Photographic Studio + The Wax Memory Cylinder. A sadder case of stolen pasts, invented intimacy, and lives built from second-hand recollection.]
    note-item[*Labor Seed* — The Patent Bureau + The Dynamo Basement + The Radium Heart Battery. The case turns toward industrial secrecy, disposable workers, and whether manufactured labor can refuse.]
  },
  [Other Seeds · Same Material · Different Cases],
)

// Page 1 · centre column ─── CASE FRAME
#let panel-premise = panelled(
  {
    section-head("Case Premise")
    [A private bureau has been building human copies from celluloid, wax, porcelain, galvanic tissue, and carefully purchased memories. Now several of the copies are loose in the city, desperate to find their maker before their brief allotted span burns out. The official response is a polite lie backed by revolvers: defective property must be retired before the public learns what has been sold in secret.]

    section-head("Tone")
    note-item[Rain on electric signs, hot projector dust, perfume in lift cages, tram sparks over puddles, and rooms lit too brightly for comfort.]
    note-item[Noir pursuit in the foreground; industrial blasphemy and fragile personhood underneath it.]

    section-head("Events")
    note-item[*The Rooftop Flight* — a chase over wet glass roofing while the market below mistakes panic for entertainment.]
    note-item[*The Hotel Anatomist Opened Up* — silk sheets, surgical tools, and one dead expert who has been searched as carefully as a filing cabinet.]
    note-item[*The Laboratory Blackout* — dynamos failing, emergency lamps glowing violet, and locked drawers hanging open by the time power returns.]

    section-head("Powers")
    note-item[*The Patent Bureau* — keep artificial labor secret until it can be monetized without scandal.]
    note-item[*The Runaway Copies* — find their maker, prolong themselves, and choose who they will be before the spark runs out.]
    note-item[*The Mnemonic Market* — steal, bottle, and resell memory as class, alibi, and identity.]
  },
  [Premise · Events · Powers],
)

// Page 2 · left column ─── PEOPLE
#let panel-people = panelled(
  {
    section-head("People")
    node-item("The Copy Hunter")[Raincoat, soft hat, sleepless eyes, and the habit of studying hands before faces. He moves like a policeman and thinks like a man trying not to become a machine himself.]
    node-item("The Runaway Chorus Girl")[Pinned curls, fox-fur collar, perfect smile one moment, raw panic the next. Her beauty is precise enough to seem rehearsed, which only makes the fear more convincing.]
    node-item("The Memory Surgeon")[Clean cuffs, silver spectacles, and a surgeon's gentleness applied to questions no one should ask aloud.]
    node-item("The Tycoon Engineer")[Patent-leather shoes, immaculate gloves, and the cultivated warmth of a host who believes ownership is the natural form of affection.]
    node-item("The Hotel Pianist")[Thin wrists, nicotine fingers, cheap dinner jacket, and a face that has spent too long watching reflections instead of people.]
  },
  [People · Faces in the Case],
)

// Page 2 · centre column ─── PLACES
#let panel-places = panelled(
  {
    section-head("Places")
    node-item("Bleak Arcade")[Glass roofing, electric signs, wet paving, shuttered stalls, and a constant half-echo from footsteps and rainwater alike. Bright, public, and lonely.]
    node-item("The Photographic Studio")[Painted backdrops, hot lamps, powder, chemical trays, and faces pinned in silver nitrate along one whole wall.]
    node-item("The Dynamo Basement")[Brick sweat, humming generators, insulated cables, and a metallic tang that settles on the tongue before the lights flicker.]
    node-item("The Municipal Archive")[Steel drawers, dust cloths, reference lamps, and enough paper to bury a life twice over. Official, dry, and built for forgetting by classification.]
    node-item("The Rain Hotel Roof")[Water tanks, neonless sign frames, slate tiles, and the city's tram wires humming just beyond the parapet. High, slick, and terminal.]
  },
  [Places · Tones and Atmosphere],
)

// Page 2 · right column ─── OBJECTS
#let panel-objects = panelled(
  {
    section-head("Objects")
    node-item("The Celluloid Identity Card")[A translucent card with black lettering sealed within it, warm at the edges, and flexible enough to feel wrong in the fingers.]
    node-item("The Wax Memory Cylinder")[A brown recording cylinder wrapped in tissue, faintly perfumed, and marked by a fingerprint pressed deep before the wax cooled.]
    node-item("The Radium Heart Battery")[A palm-sized metal capsule ribbed for grip, ticking softly inside, with a viewing slit that shows a poisonous blue-green pulse.]
    node-item("The Iris-Shutter Glass Eye")[A blown-glass eye with a brass shutter mechanism nested inside the pupil, beautiful and unmistakably made.]
    node-item("The Unfinished Porcelain Hand")[Pale ceramic fingers joined to a wire wrist armature, smooth everywhere except one thumb left rough with tool marks.]
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
