// Lester Fox — "Smooth Lester"
// The Four Foxes, 1926

#import "_leaflet-template.typ": leaflet

#show: leaflet.with(
  // ── Colour palette ───────────────────────────────────────────────────────
  accent:      rgb("#cc4466"),
  dim:         rgb("#bb6688"),
  dark-accent: rgb("#801833"),
  footer-dim:  rgb("#300810"),
  bg:          rgb("#1a0d0d"),
  text-col:    rgb("#e8cccc"),
  motto-col:   rgb("#dd7799"),

  // ── Character ────────────────────────────────────────────────────────────
  name:        "Lester Fox",
  nickname:    "Smooth Lester",
  description: [Lester is in his middle 20s. The youngest brother is as
    _bon-vivant_ as he's good with people. He moves through a room like he
    owns it and leaves like he never needed to. His brothers find him
    exasperating. Everyone else finds him irresistible.],
  motto:       "Relax, ok? I have it under control.",

  can-items: (
    [*Convince anyone* to do whatever he wants given time — as long as it's not obviously life-risking.],
    [*Lie as convincingly as telling the truth.* Maybe more convincingly than the truth.],
    [*Talk any opponent into hesitating* long enough to act — even if they are not human.],
    [*Run as fast as an Olympic champion* when his life is threatened.],
    [*Disguise himself as anyone* he has had enough time to study.],
    [*Sense any danger* when standing behind someone else.],
  ),
  cant-items: (
    [Win *any fight*, no matter what.],
  ),
)
