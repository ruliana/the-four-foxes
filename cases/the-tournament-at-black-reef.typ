// Case Leaflet — The Four Foxes, 1926
// The Tournament at Black Reef
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

#let accent      = rgb("7a5a42")
#let dark-accent = rgb("553b2a")
#let dim         = rgb("6a625b")
#let footer-dim  = rgb("746c65")
#let text-col    = rgb("241c18")
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
      #text(font: "Linux Libertine Display", size: 16.2pt, fill: text-col, tracking: 0.65pt)[#upper[The Tournament]]
      #v(0.08em)
      #text(font: "Linux Libertine Display", size: 16.2pt, fill: text-col, tracking: 0.65pt)[#upper[at Black Reef]]
      #v(0.4em)
      #hrule(length: 72%, weight: 0.5pt)
      #v(0.55em)
      #text(size: 8.1pt, fill: dim, style: "italic")["Invitation cards, cliffside matches, hidden ledgers, and an island house where every guest is being judged."]
      #v(0.55em)
      #hrule(length: 40%, weight: 0.4pt)
    ]
    v(1.05em)
    [
      #set text(size: 8.2pt)
      #set par(leading: 0.5em, justify: true)
      A private fighting exhibition draws gamblers, officers, heiresses, and spies to a fortified island just beyond the shipping lanes. The host promises sport; the estate is really measuring loyalty, fear, and usefulness.

      #v(0.45em)

      Use it when you want stylish danger, physical bravado, and a closed circle full of secret agendas.
    ]
  },
  [Case Leaflet · The Four Foxes],
)

// Page 1 · left column ─── BACK COVER
#let panel-back-cover = panelled(
  {
    section-head("Other Seeds")
    [The island can be entered through sport, espionage, or vice. Choosing a different opening trio changes who the real prey turns out to be.]

    v(0.22em)
    note-item[*Tournament Seed* — The Veteran Boxer + The Cliffside Arena + The Enamel Invitation. Closest to the film: a competition, a hidden mission, and guests realizing the house has other uses.]
    note-item[*Spy Seed* — The House Musician + The Wireless Room + The Ledger of Silk Accounts. Signals, code phrases, and quiet movement through a building pretending to be only luxurious.]
    note-item[*Underworld Seed* — The Harbor Pilot + The Boathouse Corpse + The Dragon Cane. A dirtier case of smuggling routes, supply launches, and debts collected under tropical moonlight.]
  },
  [Other Seeds · Same Material · Different Cases],
)

// Page 1 · centre column ─── CASE FRAME
#let panel-premise = panelled(
  {
    section-head("Case Premise")
    [A celebrated patron of sport invites selected guests to an island tournament beyond the harbor mouth. The matches are real enough, but the real business happens in side rooms, launch sheds, and locked galleries: blackmail, contraband, recruitment, and the sorting of who can be bought, broken, or quietly removed.]

    section-head("Tone")
    note-item[Sea salt on polished stone, silk jackets over bruised ribs, gramophone music carried through humid corridors, and applause that feels like surveillance.]
    note-item[Elegant hospitality in the foreground; coercion and criminal logistics behind every curtain.]

    section-head("Events")
    note-item[*The Opening Exhibition* — lanterns, bookmakers, white suits, and one match arranged less to entertain than to test obedience.]
    note-item[*The Boathouse Corpse* — a body hidden among fuel drums and skiffs, found just before the tide can do its work.]
    note-item[*The Midnight Search* — shutters closed, house lamps lowered, and guards turning guest rooms inside out for one missing document.]

    section-head("Powers")
    note-item[*The Island Host* — turn spectacle into loyalty, leverage, and exportable violence.]
    note-item[*The Foreign Syndicate* — move narcotics, weapons, and trained muscle through sporting fronts and coastal routes.]
    note-item[*The Patriot Circle* — expose collaborators without letting the scandal touch their own patrons.]
  },
  [Premise · Events · Powers],
)

// Page 2 · left column ─── PEOPLE
#let panel-people = panelled(
  {
    section-head("People")
    node-item("The Island Host")[Immaculate dinner jacket, lacquered hair, courteous hands, and the smiling stillness of a man who has had people beaten for less than boredom.]
    node-item("The Veteran Boxer")[Broken nose, formal manners, cheap cufflinks polished to a shine, and shoulders that remain half lifted even at rest.]
    node-item("The House Musician")[Satin gown, cigarette holder, and a voice soft enough to hide that she notices every entrance and every changed face in the room.]
    node-item("The Harbor Pilot")[Sun-browned skin, cap low, rope-burned palms, and the wary expression of a man who knows exactly how many armed launches serve the island.]
    node-item("The Woman in White Gloves")[Tailored linen, careful lipstick, and a walk precise enough to suggest drill rather than elegance. She appears to be a hostess until doors need closing.]
  },
  [People · Faces in the Case],
)

// Page 2 · centre column ─── PLACES
#let panel-places = panelled(
  {
    section-head("Places")
    node-item("The Cliffside Arena")[White canvas awnings, sea glare, ring ropes drying stiff with salt, and spectators close enough to smell blood when a fall comes hard.]
    node-item("The Orchid Courtyard")[Lantern light on wet stone, clipped plants, hidden speakers for music, and servants passing silently through the perfume-heavy dark.]
    node-item("The Guest Wing")[Ceiling fans, travel trunks, locked writing desks, and windows designed for the view rather than the escape. Plush, temporary, and watched.]
    node-item("The Wireless Room")[Coils, valves, green pilot lamps, code books, and a humming tension that makes every message feel intercepted before it is sent.]
    node-item("The Boathouse")[Fuel tins, damp planks, fishing nets, and launches bumping softly in the black water. Practical, hidden, and perfect for ugly work.]
  },
  [Places · Tones and Atmosphere],
)

// Page 2 · right column ─── OBJECTS
#let panel-objects = panelled(
  {
    section-head("Objects")
    node-item("The Enamel Invitation")[A heavy cream card edged in black enamel, embossed with a reef crest, and faintly scented with tobacco and sea salt.]
    node-item("The Dragon Cane")[Malacca shaft, silver ferrule, and a carved dragon head grip worn smooth exactly where the thumb should rest.]
    node-item("The Ledger of Silk Accounts")[A narrow bookkeeping volume bound in red cloth, with names in cipher and whole columns ruled in a second, more secret hand.]
    node-item("The Weighted Gloves")[Soft leather hand wraps stitched over concealed shot pouches, supple enough to look ceremonial until they land.]
    node-item("The Silver Signal Bell")[A palm-sized bell with a blackwood handle and a tone so fine and sharp it feels private even in a crowded room.]
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
