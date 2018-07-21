difference(){
    
union(){
translate([0,0,5/2])
cube ([50,50,5],true);

translate([0,0,35/2])
cube ([6,50,35],true);

translate([0,0,35/2])
cylinder(35,7,7,true);
}

translate([0,0,19])
#cylinder(20,4.5,4.5,false);

translate([0,0,14])
#cube([6,12,10],true);

translate([0,0,13])
rotate([0,90,0])
#cylinder(35,3,3,true);
}