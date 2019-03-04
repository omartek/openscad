
include <write/Write.scad>

Font = "write/orbitron.dxf";//["write/Letters.dxf":Basic,"write/orbitron.dxf":Futuristic,"write/braille.dxf":Braille]

number_room = "12"; // numero da stampare

height = [5,6,4,5]; // varia l'altezza di ogni numero della scritta
spacing = [10,10,10,10]; // spazio tra i numeri

twist = -3; // [-10:0.5:10] effetto tridimensionale del singolo numero da stampare
center = 6; // [0:1:70] twist rotation

module targhetta(Text) {

    for (i = [0 : len(Text) -1]) {
       linear_extrude(height = height[i], twist = twist, $fn = 100) {
            translate ([(spacing[i]*i)-center,0,0])
            text(size = 25, text = Text[i], font = Font_name, halign = "center", valign= "center", $fn = 100);
        }
    }
}

translate([0,0,0])
difference(){
translate([0,0,0]) targhetta(number_room);

intersection(){
scale([1.5,0.5,1])translate([-10,0,0])linear_extrude(1) circle(20);
targhetta(number_room);
}
}

difference(){
scale([1.5,0.5,1])translate([-10,0,0])linear_extrude(2) circle(20);
intersection(){
scale([1.5,0.5,1])translate([-10,0,0])linear_extrude(1) circle(20);
targhetta(number_room);
}
translate([-35,0,0])cylinder(5,3,3);
}