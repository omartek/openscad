lettera="D";

difference(){
translate([-39,93,0]) import("./cuoreLettera.stl",10);
#linear_extrude(20) text(lettera,font = "Liberation Sans:style=Bold Italic");
}