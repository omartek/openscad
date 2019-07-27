module cuneo(){
rotate([90,0,90])
linear_extrude(40)
polygon(points=[[0,0],[10,0],[10,10]]);
}

scale([25.4,25.4,25.4]) import("3bV4.stl");
translate([-20,-42,2]) cuneo();
rotate([0,0,180]) translate([-20,-42,2]) cuneo();
