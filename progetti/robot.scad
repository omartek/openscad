import("robot.stl");
translate([0,2,23])
rotate([90,0,0])
        linear_extrude(4)
        text(size = 10, text = "Gaia", font = "Chewy", halign = "center", valign= "center", $fn = 100);
        
translate([0,0,18])
        cube([20,4,1],true);