// Larry Fox — Character Leaflet
// The Four Foxes, 1926
// Print double-sided A5: page 1 = character, page 2 = rules.

#set page(
  paper: "a5",
  margin: (x: 1.5cm, y: 1.5cm),
  fill: rgb("#0d1a0d"),
)

#set text(
  font: "Linux Libertine",
  fill: rgb("#d5e8c8"),
  size: 10pt,
)

// ── Palette ──────────────────────────────────────────────────────────────────

#let accent      = rgb("#4aaa22")
#let dim         = rgb("#7aaa50")
#let dark-accent = rgb("#2a6010")
#let footer-dim  = rgb("#1a4010")

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
  #text(size: 28pt, weight: "bold", fill: accent)[Larry Fox]
  #v(0.2em)
  #text(size: 12pt, fill: dim, style: "italic")["Bold Larry"]
  #v(0.15em)
  #text(size: 9pt, fill: rgb("#5a8040"), style: "italic")[("Reckless Larry" according to his brothers)]
  #v(0.4em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
]

#section-header("The Man")

Larry is in his middle 40s. He's a natural explorer like his father, and
despite his age is the most physically capable of the brothers. The world is
a puzzle of ancient stones and hidden paths waiting to be solved --- and Larry
has never once waited for the others to catch up.

#v(0.4em)
#align(center)[
  #box(stroke: 0.8pt + dark-accent, inset: (x: 1em, y: 0.6em), fill: rgb("#0a2008"))[
    #text(size: 11pt, style: "italic", fill: rgb("#88cc55"))["Me first!"]
  ]
]

#section-header("Can — cross a box each time fear strikes")

#can[*Answer any question* about ancient history or artifacts --- or find the answer given enough time.]
#can[*Fight 2 or 3 humans bare-handed* and win.]
#can[*Never miss a shot or a throw*, as long as he has enough time to aim.]
#can[*Swing on ropes, jump over huge gaps, climb over huge walls.* No obstacle can block him unless it's a dead end.]

#section-header("Can't — cross a box each time fear strikes")

#cant[Convince, coerce, or intimidate *anyone*, under any circumstances.]
#cant[Lie convincingly, *no matter what* the consequences.]

#v(0.3em)
#align(center)[
  #text(size: 8pt, fill: rgb("#2a5010"), style: "italic")[
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
