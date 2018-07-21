module angolare(a,b,h,sp){
    cube([a,b,sp],false);
    cube([a,sp,h],false);
}

difference(){
union(){
angolare(50,50,50,4);

color("red")
translate([0,50-20,4])
angolare(50,20,50-4,4);
}

//fori cilindrici verticali
translate([10,40,0]) cylinder(40,2,2,true);
translate([40,40,0]) cylinder(40,2,2,true);

//fori cilindrici orizzontali
translate([10,0,20])  rotate([90,0,0])
    #cylinder(100,2,2,true);
translate([20,0,20])  rotate([90,0,0])
    #cylinder(100,4,4,true);
translate([30,0,20])  rotate([90,0,0])
    #cylinder(100,2,2,true);
}
