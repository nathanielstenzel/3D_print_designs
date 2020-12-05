hole_size=6;
screw_size=4.5;
screw_depth=20;
height=20;
raise_height=1; //height of material the foot is screwed to
raise_diameter=6;
top_diameter=20;
bottom_diameter=20;
screw_hole_diameter=4.5; //this should be slightly less than the screw diameter
difference(){
    union(){
        cylinder(d2=top_diameter,d1=bottom_diameter,h=height);
        translate([0,0,height-screw_depth])cylinder(d=raise_diameter,h=screw_depth+raise_height);
    }
    translate([0,0,height-screw_depth])cylinder(d=screw_hole_diameter,h=screw_depth+raise_height+0.1);
    if (screw_depth==height) translate([0,0,-0.1])cylinder(d=screw_hole_diameter+3,h=3);
}