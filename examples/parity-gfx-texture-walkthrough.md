# Parity Gfx Texture Lab Walkthrough

I use this file as a small checklist before changing the Dart implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 167 | ship |
| stress | atlas pressure | 251 | ship |
| edge | shader drift | 150 | ship |
| recovery | render budget | 149 | ship |
| stale | geometry span | 176 | ship |

Start with `stress` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around atlas pressure and render budget.
