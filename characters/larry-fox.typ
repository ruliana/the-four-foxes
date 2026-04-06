// Larry Fox — "Bold Larry"
// The Four Foxes, 1926

#import "../_leaflet-template.typ": leaflet

#show: leaflet.with(
  // ── Colour palette ───────────────────────────────────────────────────────
  accent:      rgb("5b6941"),
  dark-accent: rgb("465132"),

  // ── Character ────────────────────────────────────────────────────────────
  name:        "Larry Fox",
  nickname:    "Bold Larry",
  description: [Larry is in his middle 40s. He's a natural explorer like his
    father, and despite his age is the most physically capable of the brothers.
    The world is a puzzle of ancient stones and hidden paths — and Larry has
    never once waited for the others to catch up. His brothers call him
    "Reckless Larry".],
  motto:       "Me first!",
  portrait:    "assets/larry-fox.png",

  particulars-items: (
    [He can answer any question about ancient history or artifacts, or know where to find the answer given enough time.],
    [He can fight two or three human opponents with his bare hands and win.],
    [He never misses a shot or a throw, as long as he has enough time to aim.],
    [He can swing on ropes, jump over huge gaps, and climb over huge walls. No obstacle can block him unless it is a dead end.],
    [He cannot convince, coerce, or intimidate anyone.],
    [He cannot lie convincingly, no matter the consequences.],
  ),
  play-notes: (
    [Treat obstacles as invitations. If there is a ledge, a wall, a ruin, or a relic, Larry is usually the one to go first.],
    [Offer confident expertise on old places and old things; he is often right, even when he is being impossible about it.],
    [Let his bluntness matter. Larry shines in action and exploration, not in careful persuasion.],
  ),
)
