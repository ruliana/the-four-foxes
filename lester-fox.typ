// Lester Fox - Character Leaflet
// The Four Foxes, 1926

#set page(
  paper: "a5",
  margin: (x: 1.5cm, y: 1.5cm),
  fill: rgb("#1a0d0d"),
)

#set text(
  font: "Linux Libertine",
  fill: rgb("#e8cccc"),
  size: 10pt,
)

#let accent = rgb("#cc4466")
#let dim = rgb("#bb6688")
#let dark-accent = rgb("#801833")

// Decorative rule
#let hrule(color: accent) = {
  line(length: 100%, stroke: 1.5pt + color)
}

// Section header
#let section-header(title) = {
  v(0.4em)
  hrule()
  v(0.2em)
  text(size: 8pt, fill: dim, font: "Linux Libertine", tracking: 3pt)[
    #upper(title)
  ]
  v(0.3em)
}

// Can/Can't item
#let can(body) = {
  pad(left: 0.8em, bottom: 0.3em)[
    #text(fill: accent)[✦] #h(0.3em) #body
  ]
}

#let cant(body) = {
  pad(left: 0.8em, bottom: 0.3em)[
    #text(fill: rgb("#884422"))[✗] #h(0.3em) #text(fill: rgb("#c07050"))[#body]
  ]
}

// ── Header ──────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 7pt, fill: dim, tracking: 6pt)[THE FOUR FOXES · 1926]
  #v(0.5em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
  #v(0.6em)

  #text(size: 28pt, weight: "bold", font: "Linux Libertine", fill: accent)[Lester Fox]
  #v(0.2em)
  #text(size: 12pt, fill: dim, style: "italic")["Smooth Lester"]
  #v(0.4em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
]

// ── Description ─────────────────────────────────────────────────────────────

#section-header("The Man")

Lester is in his middle 20s. The youngest brother is as _bon-vivant_ as he's
good with people. He moves through a room like he owns it, leaves it like he
never needed to. His brothers find him exasperating. Everyone else finds him
irresistible.

#v(0.4em)

#align(center)[
  #box(
    stroke: 0.8pt + dark-accent,
    inset: (x: 1em, y: 0.6em),
    fill: rgb("#100808"),
  )[
    #text(size: 11pt, style: "italic", fill: rgb("#dd7799"))["Relax, ok? I have it under control."]
  ]
]

// ── Abilities ───────────────────────────────────────────────────────────────

#section-header("Can")

#can[*Convince anyone* to do whatever he wants, given time --- as long as it's not obviously life-risking.]

#can[*Lie as convincingly as telling the truth.* Maybe more convincingly than the truth.]

#can[*Talk any opponent into hesitating*, even if they are not human.]

#can[*Run as fast as an Olympic champion* when his life is threatened.]

#can[*Disguise himself as anyone* he has had enough time to study.]

#can[*Sense any danger* when standing behind someone else.]

// ── Limitations ─────────────────────────────────────────────────────────────

#section-header("Can't")

#cant[Win *any fight*, no matter what.]

// ── Footer ──────────────────────────────────────────────────────────────────

#v(1fr)
#hrule(color: dark-accent)
#v(0.3em)
#align(center)[
  #text(size: 7pt, fill: rgb("#300810"), tracking: 2pt)[
    THE FOUR FOXES DETECTIVE AGENCY · DICELESS RPG
  ]
]
