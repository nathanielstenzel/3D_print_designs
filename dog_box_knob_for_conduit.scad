/*
A replacement knob for a dog box which uses a 3/4" conduit sleeve to avoid dogs chewing it to bits.
Cut away the sacrificial bridge after printing.
Author: Nathaniel J Stenzel
Designed on 2/19/2020
*/
$fn=20; //lines in circle
nut_diameter = 7.7; //7.75mm last. almost tight enough
nut_length = 7;
ring_length = 16;
//conduit is 3/4 inch aka 19.05
conduit_diameter=19;
cut_away=false;

difference(){
    union(){
        cylinder(d=nut_diameter+3,h=ring_length);
        cylinder(d=conduit_diameter+2,h=2,$fn=180);
        difference(){
            cylinder(d=conduit_diameter,h=16);
            translate([0,0,ring_length-nut_length-3])cylinder(d1=nut_diameter+4,d2=conduit_diameter-2,h=ring_length-nut_length+2.01);
        }
    }
    translate([0,0,ring_length-2])cylinder(d=5,h=2.001,$fn=30);//a hole for the wire that the nut is on
    translate([0,0,ring_length-2])cylinder(d1=5,d2=7,h=2.001,$fn=30);//help this slide over the nut
    //a slant might let it slip loose
    //translate([0,0,ring_length-2])cylinder(d1=nut_diameter,d2=0,h=1.5); //slanted top above the nut
    translate([0,0,ring_length-nut_length-2])cylinder(d=nut_diameter,h=nut_length+0.001,$fn=30); //hole for the nut
    translate([-nut_length*0.8,0,ring_length-1])rotate([0,90,0])resize([nut_diameter*2,0.5,nut_length*1.6])cylinder(d=1,h=1); //slit
    translate([0,nut_length*0.8,ring_length-1])rotate([90,0,0])resize([0.5,nut_diameter*2,nut_length*1.6])cylinder(d=1,h=1); //slit
    if(cut_away)translate([0,0,-0.01])cube([conduit_diameter+5,conduit_diameter+1,ring_length+1]);
}
translate([0,0,ring_length-2])cylinder(d=nut_diameter+3,h=0.021); //sacrificial bridge