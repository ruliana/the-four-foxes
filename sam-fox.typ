// Sam Fox — Character Leaflet
// The Four Foxes, 1926
// Print double-sided A5: page 1 = character, page 2 = rules.

#set page(
  paper: "a5",
  margin: (x: 1.5cm, y: 1.5cm),
  fill: rgb("#0d0d1a"),
)

#set text(
  font: "Linux Libertine",
  fill: rgb("#ccd5e8"),
  size: 10pt,
)

// ── Palette ──────────────────────────────────────────────────────────────────

#let accent      = rgb("#4466cc")
#let dim         = rgb("#6688bb")
#let dark-accent = rgb("#223380")
#let footer-dim  = rgb("#101030")

// ── Helpers ──────────────────────────────────────────────────────────────────

#let hrule(color: accent) = line(length: 100%, stroke: 1.5pt + color)

#let section-header(title) = {
  v(0.4em)
  hrule()
  v(0.2em)
  text(size: 8pt, fill: dim, tracking: 3pt)[#upper(title)]
  v(0.3em)
}

#let can(body) = pad(left: 0.8em, bottom: 0.25em)[
  #text(fill: accent)[□] #h(0.3em) #body
]
#let cant(body) = pad(left: 0.8em, bottom: 0.25em)[
  #text(fill: accent)[□] #h(0.3em) #text(fill: rgb("#c07050"))[#body]
]

#let rule-item(body) = pad(left: 0.8em, bottom: 0.25em)[
  #text(fill: dim)[›] #h(0.3em) #body
]

// ── PAGE 1: Character ─────────────────────────────────────────────────────────

#align(center)[
  #text(size: 7pt, fill: dim, tracking: 6pt)[THE FOUR FOXES · 1926]
  #v(0.5em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
  #v(0.6em)
  #text(size: 28pt, weight: "bold", fill: accent)[Sam Fox]
  #v(0.2em)
  #text(size: 12pt, fill: dim, style: "italic")["Cunning Sam"]
  #v(0.4em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
]

#section-header("The Man")

Sam is in his late 30s. He's the only real detective of the four brothers.
While the others charge ahead or charm their way through, Sam reads the room
--- the scuff marks, the ash on the floor, the tilt of a man's chin. Most
of the time sober enough to see what others miss. Most of the time.

#v(0.4em)
#align(center)[
  #box(stroke: 0.8pt + dark-accent, inset: (x: 1em, y: 0.6em), fill: rgb("#080810"))[
    #text(size: 11pt, style: "italic", fill: rgb("#7799dd"))["It's obvious, isn't it?"]
  ]
]

#section-header("Can — cross a box each time fear strikes")

#can[*When sober:* Find anything odd in a place or situation, given enough time. Always something relevant.]
#can[*When sober:* Determine exactly *what recently happened* in a place, given enough time.]
#can[*When sober:* Tell if someone is *lying* and sense their feelings during a conversation.]
#can[*When drunk or with an improvised weapon:* Defeat any human in close combat. The improvised weapon breaks after first use.]
#can[*When drunk:* Jump, climb and escape any pursuer. When sober --- same, but ends up badly injured.]

#section-header("Can't — cross a box each time fear strikes")

#cant[The detective senses *require sobriety*; the combat edge *requires being drunk* (or armed with whatever's at hand). He cannot be both at once.]

#v(0.3em)
#align(center)[
  #text(size: 8pt, fill: rgb("#182050"), style: "italic")[
    Cross off boxes as fear mounts. At the 3rd, add a condition and reset. → See back.
  ]
]

#v(1fr)
#hrule(color: dark-accent)
#v(0.3em)
#align(center)[
  #text(size: 7pt, fill: footer-dim, tracking: 2pt)[
    THE FOUR FOXES DETECTIVE AGENCY · DICELESS RPG
  ]
]

// ── PAGE 2: Rules (shared) ────────────────────────────────────────────────────

#include "_rules.typ"
