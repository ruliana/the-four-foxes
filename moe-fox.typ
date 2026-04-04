// Moe Fox - Character Leaflet
// The Four Foxes, 1926

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

#let accent = rgb("#c8880a")
#let dim = rgb("#a89060")
#let dark-accent = rgb("#8b5e05")

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

  #text(size: 28pt, weight: "bold", font: "Linux Libertine", fill: accent)[Moe Fox]
  #v(0.2em)
  #text(size: 12pt, fill: dim, style: "italic")["Grumpy Moe"]
  #v(0.4em)
  #line(length: 60%, stroke: 0.5pt + dark-accent)
]

// ── Description ─────────────────────────────────────────────────────────────

#section-header("The Man")

Moe is in his early 50s. He was never an action guy, but always felt
responsible for his brothers since their father disappeared. He carries
that burden with the grim resolve of a man who has seen too much and
sleeps too little.

#v(0.4em)

#align(center)[
  #box(
    stroke: 0.8pt + dark-accent,
    inset: (x: 1em, y: 0.6em),
    fill: rgb("#2a1a04"),
  )[
    #text(size: 11pt, style: "italic", fill: rgb("#d4a84b"))["Nobody hit my brothers, except me!"]
  ]
]

// ── Abilities ───────────────────────────────────────────────────────────────

#section-header("Can")

#can[When one of his brothers is in danger, *cannot lose a fight* against a human opponent.]

#can[*Clear fear, dizziness or any temporary mental condition* from a brother with a slap or a punch.]

#can[*Immune to fear* while smoking a cigar.]

#can[*Sense danger or supernatural forces* --- knows where and how bad, even if not exactly what.]

#can[*Cast a small flame* on his hands, as strong as a lighter.]

// ── Limitations ─────────────────────────────────────────────────────────────

#section-header("Can't")

#cant[Win a close fight *unless one of his brothers is in danger*.]

#cant[Shoot or throw with any precision --- the aim of a drunk raccoon.]

// ── Footer ──────────────────────────────────────────────────────────────────

#v(1fr)
#hrule(color: dark-accent)
#v(0.3em)
#align(center)[
  #text(size: 7pt, fill: rgb("#5a4020"), tracking: 2pt)[
    THE FOUR FOXES DETECTIVE AGENCY · DICELESS RPG
  ]
]
