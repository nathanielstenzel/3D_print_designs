$fn=90;
difference(){
    union(){
        cylinder(d=50.7,h=2);
        translate([0,0,2])cylinder(d1=45.8,d2=45.6,h=6.5);
    }
    cylinder(d=40,h=6); //42.9 really
    //click notches
    translate([50.7/2,0,0])scale([1,2,1])cylinder(d1=1.6,d2=5,h=2);
    translate([-50.7/2,0,0])scale([1,2,1])cylinder(d1=1.6,d2=5,h=2);
    translate([0,50.7/2,0])scale([2,1,1])cylinder(d1=1.6,d2=5,h=2);
    translate([0,-50.7/2,0])scale([2,1,1])cylinder(d1=1.6,d2=5,h=2);
    //reduce the need for support material
    rotate([0,0,-45])translate([17,0,6])cylinder(d1=5.5,d2=0,h=1.5);
    rotate([0,0,-45])translate([-17,0,6])cylinder(d1=5.5,d2=0,h=1.5);
}
intersection(){
    translate([0,0,8.5])cylinder(d1=45.6,d2=43.8,h=8.6);
    union(){
        translate([4.62,-3,8.5])cube([43.8,6,8.6*2]);
        rotate([0,0,12])translate([4.62,-3,8.5])cube([43.8,6,8.6*2]);
        rotate([0,0,180])translate([4.62,-3,8.5])cube([43.8,6,8.6*2]);
        rotate([0,0,192])translate([4.62,-3,8.5])cube([43.8,6,8.6*2]);
    }
}

rotate([0,0,-45])difference(){
    translate([17,0,0])cylinder(d=9.6,h=6.5);
    translate([17,0,0])cylinder(d=5.5,h=6.5);
}

rotate([0,0,-45])difference(){
    translate([-17,0,0])cylinder(d=9.6,h=6.5);
    translate([-17,0,0])cylinder(d=5.5,h=6.5);
}

difference(){
    cylinder(d=9.5,h=8.5);
    cylinder(d1=6,d2=0,h=6);
}

difference(){
    translate([35,0,0])cylinder(d=18,h=6.5);
    translate([35,0,2])cylinder(d=14,h=6.5);
    translate([35,0,0])cylinder(d=3.5,h=3);
}

/*
//spring holder and axel mount
translate([0,0,-9.02])difference(){
    union(){
        cylinder(d=6.1,h=5);
        //spring is 13.51 outer and 9.75 inner
        translate([0,0,5])cylinder(d=9.5,h=12.52);
    }
    cylinder(d=3.5,h=17.52);
    //screw is 2.6mm inner and 3.4 thread.
}
*/
translate([-15,10,8.5])linear_extrude(height=0.6)text("<--OPEN",size=5,font="Liberation Sans");
translate([-15,-14.25,8.5])linear_extrude(height=0.6)text("<--CLOSE",size=5,font="Liberation Sans",style="bold");