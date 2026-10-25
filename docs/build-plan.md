# Mechanical and sensing build plan

## What to reuse

Use the open-hardware frame geometry and adjustable eye-camera arm as a **reference** for the first fit study. The published assembly uses M2/M3 fasteners and a dual-camera option. Its documentation reports testing GC0308 cameras at 640×480 and nominal 30 Hz, with an eye-facing 50° lens and world-facing 80° lens; actual frame rate can be lower. These are **research candidates**, not selected GIG components or confirmed procurement items. See the [source hardware guide](https://github.com/raffaelemazziotti/MEYElens/blob/main/docs/hardware.html).

We do not need to import the source project's GPL software now. GIG's key tasks—item recognition, deliberate confirmation, approved prompt display and event-linked review—need their own implementation and validation. The frame source does not supply a display or a ready GIG assembly.

## GIG-specific design work

1. **Measure actual hardware.** Select an eye camera, outward scene camera, display, switch, cable, tether connector and pocket computer; record exact footprints, mass, power and connector locations. Avoid modifying certified PPE.
2. **Fit the frame.** Print one reference frame section and a short temple coupon. Measure head fit, eye-camera position, sightline and rapid removal. Choose PLA only for an indoor fit study; assess a suitable final material and heat exposure separately.
3. **Adapt the module.** Change `cad/gig/GIG_parametric_temple_module.scad` from its generic 8.5×4.0 mm channel and 44×20×14 mm body to measured dimensions. Add actual camera/control footprints and cable strain relief. The current SCAD model has not been shown to mate with the reference frame.
4. **Model the assembly.** Create native CAD for frame, eye camera, scene camera, display support, control, cable path and fasteners. Export exploded and worn-view renders. Make a wiring schematic.
5. **Validate.** Record measured mass, retention, cable strain, heat, display alignment, field of view, comfort, calibration drift, wrong-item selection and fast removal. Only run FEA once the final material, geometry and loads are specified; report assumptions and results.

## Evidence to add after real work

- Photos of the team measuring, printing and assembling with institutional IDs visible where competition rules require.
- Native CAD feature tree, real slicer screenshot, actual printed parts, test log and bill of materials with vendor quotations.
- A video of the complete supervised training loop, with real timing and failure cases.

This is a build plan, not completed testing.
