// GIG design-stage CAD concept: clip-on temple sensor/control module.
// Units: mm. This is not a validated wearable or a fit for any named device.
// Measure the chosen glasses frame and components before printing.

temple_width = 8.5;       // replace with measured frame width
temple_height = 4.0;      // replace with measured frame thickness
fit_clearance = 0.5;      // tune with a short test print
module_length = 44;
module_width = 20;
module_height = 14;
mount_wall = 2.4;
hole_diameter = 2.7;     // nominal clearance for M2.5 fasteners
hole_spacing = 18;
$fn = 48;

// A saddle for a straight, non-certified training frame temple.
// Two screw holes provide a generic top mounting plane for a camera or control PCB.
// The underside channel and tie slots are placeholders for fit testing.
module temple_module() {
    difference() {
        union() {
            cube([module_length, module_width, module_height], center=true);
            translate([0, 0, module_height/2 + 2])
                cube([30, 14, 4], center=true);
        }

        // Longitudinal temple channel, open at both ends.
        translate([0, 0, -module_height/2 + mount_wall +
                   (temple_height + fit_clearance)/2])
            cube([module_length + 1,
                  temple_width + fit_clearance,
                  temple_height + fit_clearance], center=true);

        // Narrow underside entry slot. Do not assume it will snap onto a frame.
        translate([0, 0, -module_height/2 - 0.8])
            cube([module_length + 1,
                  temple_width - 1.2,
                  2*mount_wall + 2.4], center=true);

        // Generic top holes. Replace with the actual selected module footprint.
        for (x = [-hole_spacing/2, hole_spacing/2])
            translate([x, 0, module_height/2 + 2])
                cylinder(h=module_height + 10, d=hole_diameter, center=true);

        // Cable clearance at the rear end.
        translate([module_length/2 - 3, 0, 0])
            rotate([0, 90, 0]) cylinder(h=8, d=4.0, center=true);
    }
}

temple_module();
