// Larry Fox — "Bold Larry"
// The Four Foxes, 1926

#import "_leaflet-template.typ": leaflet

#show: leaflet.with(
  // ── Colour palette ───────────────────────────────────────────────────────
  accent:      rgb("#4aaa22"),
  dim:         rgb("#7aaa50"),
  dark-accent: rgb("#2a6010"),
  footer-dim:  rgb("#1a4010"),
  bg:          rgb("#0d1a0d"),
  text-col:    rgb("#d5e8c8"),
  motto-col:   rgb("#88cc55"),

  // ── Character ────────────────────────────────────────────────────────────
  name:        "Larry Fox",
  nickname:    "Bold Larry",
  description: [Larry is in his middle 40s. He's a natural explorer like his
    father, and despite his age is the most physically capable of the brothers.
    The world is a puzzle of ancient stones and hidden paths — and Larry has
    never once waited for the others to catch up. His brothers call him
    "Reckless Larry".],
  motto:       "Me first!",

  can-items: (
    [*Answer any question* about ancient history or artifacts — or find the answer given enough time.],
    [*Fight 2 or 3 humans bare-handed* and win.],
    [*Never miss a shot or a throw*, as long as there is enough time to aim.],
    [*Swing on ropes, jump over huge gaps, climb over huge walls.* No obstacle can block him unless it's a dead end.],
  ),
  cant-items: (
    [Convince, coerce, or intimidate *anyone*, under any circumstances.],
    [Lie convincingly, *no matter what* the consequences.],
  ),
)
