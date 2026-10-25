# GIG Assistance and Training Glasses

Design-stage mechanical files for a supervised responder-training prototype. The first loop is: look at an item, confirm it with a physical control, read an approved short instruction, and link the event to an instructor review.

## Files

- [`cad/gig/GIG_parametric_temple_module.scad`](cad/gig/GIG_parametric_temple_module.scad): original parametric clip-on module draft; generic dimensions only.
- [`third_party/meyelens/frame.3mf`](third_party/meyelens/frame.3mf) and [`frame_stls.zip`](third_party/meyelens/frame_stls.zip): unchanged open-hardware reference geometry for an eye-tracking frame.
- [`docs/build-plan.md`](docs/build-plan.md): proposed adaptation, parts to select, and checks before fabrication.

**Status:** No combined GIG CAD assembly, printed fit test, FEA, working glasses, or user-study result is claimed here. The reference frame and original module have not been checked for mutual fit.

The third-party files are from [MEYELens](https://github.com/raffaelemazziotti/MEYElens) at commit `e2a981c0b1212c12837837c4813c33fd0b3173b8`, under CERN-OHL-P-2.0. The license and source notice are in `third_party/meyelens/`. Their software is GPL-3.0 and has **not** been imported into this repository. The original GIG OpenSCAD draft is separate.

## Presentation

The [Stage 2 presentation](presentation/GIG_Stage2_VK26-AU-HCI-0032_Repo_Linked.pptx) and its four illustrative concept images are included for team review. The concept images are AI-generated and do not show a built device or field test.
