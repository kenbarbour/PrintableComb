/**
 * Parametric Hair Comb
 * Author: Kenneth Barbour 2014
 * 
 * A quick and simple parametric hair comb I intend to carry in my pocket.
 */

thickness = 3; // Thickness
length = 85.6; // Overall length
width = 53.9; // Overall Width
taper = 2.5; // Tooth taper angle
tooth_pitch = 1.8; // Tooth thickness
spine_thickness = 10; // Spine thickness
corner_radius = 5; // Corner radius

total_teeth = floor((length - 2*tooth_pitch) / (2*tooth_pitch)) - 1;
tooth_section = (tooth_pitch*total_teeth*2 + tooth_pitch); // Length of toothed section

difference() {
	rounded_cube([width, length, thickness], corner_radius);
	translate([spine_thickness,0,thickness]) rotate([0,taper,0]) cube([width+spine_thickness, length, thickness*2]);
	translate([0, (length - tooth_section)/2, 0]) 
	for (i = [0 : total_teeth]) {
		translate([spine_thickness, i * tooth_pitch * 2,0]) rounded_cube([width, tooth_pitch, thickness], tooth_pitch/2);
	}
}

module rounded_cube(size=[1,1,1], r=0) {
	translate([r,0,0]) cube([size[0]-2*r,size[1],size[2]]);
	translate([0,r,0]) cube([size[0],size[1]-2*r,size[2]]);
	translate([r,r,0]) cylinder(r=r, h=size[2]);
	translate([r,size[1]-r,0]) cylinder(r=r, h=size[2]);
	translate([size[0]-r,r,0]) cylinder(r=r, h=size[2]);
	translate([size[0]-r,size[1]-r,0]) cylinder(r=r, h=size[2]);
}