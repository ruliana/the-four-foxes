# Image Direction

Use this reference when creating portrait prompts, location prompts, or other sheet-ready art direction for The Four Foxes.

## House style for character portraits

Anchor portrait prompts to the **approved later Moe portrait**, not just to a generic pulp look.

Target this exact visual direction:
- **stark black-and-white pulp illustration**
- **bold brush-and-ink linework**
- **thick dramatic strokes**
- **heavy use of negative space**
- **strong graphic shapes**
- **deep blacks and clear light areas**
- **only sparse, purposeful crosshatching**
- **tight chest-up composition** with the face dominating the frame
- **very simple backgrounds** built from shadow masses, not scenery clutter
- **1920s period clothing**, but costume detail must stay secondary to the face
- the image should feel like a **lost 1920s newspaper adventure illustration or pulp interior plate**, not modern glossy concept art

This is the default house style because it survives the small horizontal cover slot much better than painterly or low-contrast alternatives.

## Lessons learned from portrait prompting

1. Start with the **physical read first**: age, build, face shape, hair, facial hair, eyes, and expression.
2. Use **one strong visual anchor** when possible instead of several equal references.
3. Prefer **specific visible instructions** over broad mood language.
4. Optimize for **small-print readability**: big face, clean silhouette, minimal background, no fussy props.
5. If the first result looks good standalone but weak in the sheet, tighten the prompt toward **higher contrast, simpler shapes, fewer details, and less torso or hands**.
6. Keep the tone serious: **never parody, never celebrity likeness, never comedy**, even when using old-screen-persona inspiration.

## Character portrait prompt checklist

Include most of these in the prompt:
- horizontal format
- chest-up or very tight waist-up crop
- face large and readable
- black-and-white only when targeting the approved house style
- bold brush-and-ink linework
- thick dramatic strokes
- strong negative space and shadow masses
- deep blacks with limited midtones
- minimal background
- period-accurate 1920s wardrobe
- explicit avoid-list for photorealism, grayscale airbrush rendering, soft digital shading, clutter, text, extra characters, dominant props, and comedy or parody

## Location and establishing-shot guidance

Use the same house style as the approved Moe portrait for locations unless the user asks otherwise:
- stark black-and-white pulp illustration
- bold brush-and-ink linework
- thick dramatic strokes
- heavy use of negative space
- strong graphic shapes with deep blacks and clear light areas
- readable architecture and foreground-background separation
- a few strong iconic props only
- moody 1920s detective / occult-adventure atmosphere
- should feel like a lost pulp interior illustration, not a modern cinematic matte painting

Good Four Foxes location subjects include:
- detective offices
- rain-slick alleys
- occult libraries
- museum storage rooms
- dockside warehouses
- railway platforms
- manor hallways
- underground ruins
- ritual chambers
- speakeasies or back rooms

For location prompts, specify:
1. the **type of place** and why it matters in play
2. the **time of day or lighting condition**
3. the **key readable objects or structures**
4. the **mood signal**: menace, secrecy, decay, occult danger, pursuit, or false safety
5. an avoid-list that bans clutter and tiny unreadable detail

## Workflow for generating and integrating a portrait image

1. Start from the character's physical read, not only mood.
2. Write a Gemini-ready or model-ready prompt using the portrait guidance above.
3. Generate the image and inspect it on its own.
4. Copy the approved image into `assets/`.
5. Pass `portrait: "assets/your-file.png"` in the relevant `leaflet.with(...)` call.
6. Compile the affected sheet.
7. Export a preview PNG from the PDF and inspect the actual cover panel.
8. If it does not read well at small size, simplify the prompt and regenerate.

## Workflow for generating a location image prompt

1. Name the place and its role in the scenario.
2. Decide whether the image is for atmosphere, clue emphasis, or scene framing.
3. Pick 3 to 5 large visual elements only.
4. Use the black-and-white pulp / negative-space house style unless asked otherwise.
5. Keep the composition readable at leaflet scale or handout scale.
6. Add an explicit avoid-list against clutter, tiny props, soft modern rendering, and text.

## Final checks for art direction

Before finishing, confirm:
- the prompt is optimized for the final printed use, not only for standalone beauty
- the composition will survive the horizontal cover slot if used on a sheet
- the prompt bans clutter and modern glossy rendering
- the final image still reads clearly once compiled into the leaflet
