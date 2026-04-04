// Moe Fox — Character Leaflet
// The Four Foxes, 1926
// Print double-sided A5: page 1 = character, page 2 = rules.

#set page(
  paper: "a5",
  margin: (x: 1.5cm, y: 1.5cm),
  fill: rgb("#1a1008"),
)

#set text(
  font: "Linux Libertine",
  fill: rgb("#e8d5a3"),
  size: 10pt,
)

// ── Palette ──────────────────────────────────────────────────────────────────

#let accent     = rgb("#c8880a")
#let dim        = rgb("#a89060")
#let dark-accent = rgb("#8b5e05")
#let footer-dim = rgb("#5a4020")

// ── Helpers ──────────────────────────────────────────────────────────────────

#let hrule(color: accent) = line(length: 100%, stroke: 1.5pt + color)

#let section-header(title) = {
  v(0.4em)
  hrule()
  v(0.2em)
  text(size: 8pt, fill: dim, tracking: 3pt)[#upper(title)]
  v(0.3em)
}

// Fear-tracking box + ability line (players cross off boxes as fear mounts)
#let can(body) = pad(left: 0.8em, bottom: 0.25em)[
  #text(fill: accent)[□] #h(0.3em) #body
]
#let cant(body) = pad(left: 0.8em, bottom: 0.25em)[
  #text(fill: accent)[□] #h(0.3em) #text(fill: rgb("#c07050"))[#body]
]

// Rules page helpers
#let rule-item(body) = pad(left: 0.8em, bottom: 0.25em)[
  #text(fill: dim)[›] #h(0.3em) #body
]

// ── PAGE 1: Character ─────────────────────────────────────────────────────────

#align(center)[
  #text(size: 7pt, fill: dim, tracking: 6pt)[THE FOUR FOXES · 1926]
  #v(0.5em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
  #v(0.6em)
  #text(size: 28pt, weight: "bold", fill: accent)[Moe Fox]
  #v(0.2em)
  #text(size: 12pt, fill: dim, style: "italic")["Grumpy Moe"]
  #v(0.4em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
]

#section-header("The Man")

Moe is in his early 50s. He was never an action guy, but always felt
responsible for his brothers since their father disappeared. He carries that
burden with the grim resolve of a man who has seen too much and sleeps too
little.

#v(0.4em)
#align(center)[
  #box(stroke: 0.8pt + dark-accent, inset: (x: 1em, y: 0.6em), fill: rgb("#2a1a04"))[
    #text(size: 11pt, style: "italic", fill: rgb("#d4a84b"))["Nobody hit my brothers, except me!"]
  ]
]

#section-header("Can — cross a box each time fear strikes")

#can[When a brother is in danger, *cannot lose a fight* against any human.]
#can[*Clear fear, dizziness or any temporary mental condition* from a brother with a slap or a punch.]
#can[*Immune to fear* while smoking a cigar.]
#can[*Sense danger or supernatural forces* --- knows where and how bad, even if not exactly what.]
#can[*Cast a small flame* on his hands, as strong as a lighter.]

#section-header("Can't — cross a box each time fear strikes")

#cant[Win a close fight *unless one of his brothers is in danger*.]
#cant[Shoot or throw with any precision --- the aim of a drunk raccoon.]

#v(0.3em)
#align(center)[
  #text(size: 8pt, fill: rgb("#7a5820"), style: "italic")[
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
