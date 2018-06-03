name="Gaia";
font_dim=10;
//font_type="Liberation Sans:style=Bold Italic";
font_type="Chewy";

import("robot.stl");
translate([0,2,23])
rotate([90,0,0])
        linear_extrude(4)
        text(size = font_dim, text = name, font=font_type, halign = "center", valign= "center", $fn = 100);
        
translate([0,0,18])
        cube([20,4,1],true);