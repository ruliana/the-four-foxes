// Moe Fox — "Grumpy Moe"
// The Four Foxes, 1926

#import "_leaflet-template.typ": leaflet

#show: leaflet.with(
  // ── Colour palette ───────────────────────────────────────────────────────
  accent:      rgb("#c8880a"),
  dim:         rgb("#a89060"),
  dark-accent: rgb("#8b5e05"),
  footer-dim:  rgb("#5a4020"),
  bg:          rgb("#1a1008"),
  text-col:    rgb("#e8d5a3"),
  motto-col:   rgb("#d4a84b"),

  // ── Character ────────────────────────────────────────────────────────────
  name:        "Moe Fox",
  nickname:    "Grumpy Moe",
  description: [Moe is in his early 50s. He was never an action guy, but always
    felt responsible for his brothers since their father disappeared. He carries
    that burden with the grim resolve of a man who has seen too much and sleeps
    too little.],
  motto:       "Nobody hit my brothers, except me!",

  can-items: (
    [When a brother is in danger, *cannot lose a fight* against any human opponent.],
    [*Clear fear, dizziness or any temporary mental condition* from a brother with a slap or a punch.],
    [*Immune to fear* while smoking a cigar.],
    [*Sense danger or supernatural forces* — knows where and how bad, even if not exactly what.],
    [*Cast a small flame* on his hands, as strong as a lighter.],
  ),
  cant-items: (
    [Win a close fight *unless one of his brothers is in danger*.],
    [Shoot or throw with any precision — the aim of a *drunk raccoon*.],
  ),
)
