//Designed by Nathaniel Stenzel on January 12, 2020.
//Thingiverse thing 4099004

$fn=60;

//translate([40.2,8.9,0])import("/home/nstenzel/3d_printer/Rod_End_Cap_1_of_3.stl");
length=40;
module endstop_placer(){
    translate([-19.9,0,0])difference(){
        translate([3,3,17.5])cube([6,6,35],center=true);
        translate([0,0,-1])cylinder(d=8,h=37);
    }
    translate([19.9,0,0])difference(){
        translate([-3,3,17.5])cube([6,6,35],center=true);
        translate([0,0,-1])cylinder(d=8,h=37);
    }

    translate([19.9,0,0])difference(){
        cylinder(d=12,h=35);
        translate([0,0,-1])cylinder(d=8,h=37);
        translate([0,-6,-1])cube([12,12,80],center=true);
        translate([6,5,-1])cube([12,12,80],center=true);
    }

    difference(){
        translate([0,5.7,17.5])cube([39.8,2,35],center=true);
        translate([0,6,29])cube([20,3,15],center=true);
    translate([0,3.8,22])scale([1,1,0.5])rotate([-90,0,0])cylinder(d=20,h=3);
    }

    
    difference(){
        translate([0,-3.67,2.5])cube([31.8,18,5],center=true);
        translate([0,-3.67,2.5])cube([18,19,6],center=true);
    }

}


endstop_placer();


