// A replacement knob for a dog box
// Author: Nathaniel J Stenzel
$fn=180; //lines in circle
nut_diameter = 7.7; //7.75mm last. almost tight enough
nut_length = 7;
ring_diameter = 20;
ring_length = 16;

translate([0,0,28])rotate([180,0,0]) {
translate([0,0,ring_length+nut_length]) cylinder(d=ring_diameter+10,h=5);
difference() {
cylinder(d=ring_diameter+5,h=ring_length+nut_length);
translate([0,0,-0.1]) cylinder(d=ring_diameter,h=ring_length);
translate([0,0,-0.1]) cylinder(d=nut_diameter,h=ring_length+nut_length);
}
}