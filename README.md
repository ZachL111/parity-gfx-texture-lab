# parity-gfx-texture-lab

`parity-gfx-texture-lab` keeps a focused Dart implementation around graphics. The project goal is to design a Dart verification harness for texture systems, covering storage recovery, log and snapshot fixtures, and failure-oriented tests.

## Reason For The Project

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how geometry span and shader drift should influence a review result.

## Parity Gfx Texture Lab Review Notes

The first comparison I would make is `atlas pressure` against `render budget` because it shows where the rule is most opinionated.

## What It Does

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/parity-gfx-texture-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `atlas pressure` and `render budget`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Dart code keeps the review rule close to the tests.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The check exercises the source code and the review fixture. `stress` is the high score at 251; `recovery` is the low score at 149.

## Boundaries

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
