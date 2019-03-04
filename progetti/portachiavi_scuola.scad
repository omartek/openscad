Font_name = "Chewy"; // Font utilizzato

number = "12"; // numero da stampare
height = [5,6,4,5,4,3,5,4,6,4,3,5,4,6]; // varia l'altezza di ogni numero della scritta
spacing = [10,10,10,10,10,10,10,10]; // spazio tra i numeri

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

targhetta(number);
difference(){
scale([1.5,0.5,1])translate([-10,0,2])linear_extrude(1) circle(20);
translate([-35,0,0])cylinder(5,3,3);
}