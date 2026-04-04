// Sam Fox — "Cunning Sam"
// The Four Foxes, 1926

#import "_leaflet-template.typ": leaflet

#show: leaflet.with(
  // ── Colour palette ───────────────────────────────────────────────────────
  accent:      rgb("#4466cc"),
  dim:         rgb("#6688bb"),
  dark-accent: rgb("#223380"),
  footer-dim:  rgb("#101030"),
  bg:          rgb("#0d0d1a"),
  text-col:    rgb("#ccd5e8"),
  motto-col:   rgb("#7799dd"),

  // ── Character ────────────────────────────────────────────────────────────
  name:        "Sam Fox",
  nickname:    "Cunning Sam",
  description: [Sam is in his late 30s. He's the only real detective of the
    four brothers. While the others charge ahead or charm their way through,
    Sam reads the room — the scuff marks, the ash on the floor, the tilt of a
    man's chin. Most of the time sober enough to see what others miss. Most of
    the time.],
  motto:       "It's obvious, isn't it?",

  can-items: (
    [*When sober:* Find anything odd in a place or situation given enough time. Always something relevant to the case.],
    [*When sober:* Determine exactly *what recently happened* in a place, given enough time.],
    [*When sober:* Tell if someone is *lying* and sense their feelings during a conversation.],
    [*When drunk or with an improvised weapon:* Defeat any human in close combat. The improvised weapon breaks after first use.],
    [*When drunk:* Jump, climb and escape any pursuer. When sober — same, but ends up badly injured.],
  ),
  cant-items: (
    [Be both sharp *and* a fighter at once — the detective senses need sobriety; the combat edge needs drink (or whatever is at hand).],
  ),
)
