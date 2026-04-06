// Sam Fox — "Cunning Sam"
// The Four Foxes, 1926

#import "../_leaflet-template.typ": leaflet

#show: leaflet.with(
  // ── Colour palette ───────────────────────────────────────────────────────
  accent:      rgb("566b82"),
  dark-accent: rgb("404f63"),

  // ── Character ────────────────────────────────────────────────────────────
  name:        "Sam Fox",
  nickname:    "Cunning Sam",
  description: [Sam is in his late 30s. He's the only real detective of the
    four brothers. While the others charge ahead or charm their way through,
    Sam reads the room — the scuff marks, the ash on the floor, the tilt of a
    man's chin. Most of the time sober enough to see what others miss. Most of
    the time.],
  motto:       "It's obvious, isn't it?",
  portrait:    "assets/sam-fox.png",

  particulars-items: (
    [If sober and given enough time, he can find anything odd in a place or situation. It is always something relevant to the case.],
    [If sober and given enough time, he can tell exactly what recently happened in a place.],
    [When sober, he can tell if someone is lying and what they are feeling during a conversation.],
    [He can defeat any human opponent in close combat, as long as he is drunk or can improvise a weapon.],
    [Any improvised weapon he uses breaks after the first use.],
    [When drunk, he can jump, climb, and escape any pursuer.],
    [When sober, he can also jump, climb, and escape any pursuer, but he ends up badly injured.],
  ),
  play-notes: (
    [Lead with questions: what stands out here, what happened recently, who is holding something back?],
    [Decide what state Sam is in before acting. His sharpest insight and his ugliest fighting edge do not arrive together.],
    [Let him feel observant, tired, and a little self-destructive — the man who sees too much and still keeps looking.],
  ),
)
