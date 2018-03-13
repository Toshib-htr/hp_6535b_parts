module screw_hole(x, y, z, radius, height){
    translate([x, y, z])cylinder(r=radius, h=height, $fn=15);
}

//Order: length, height, width
dimensions = [204.88, 5.75, 2];

screw_locations = [17.59, 79.15, 127.22, 186.67];
screw_diameter = 2;

difference(){
cube(dimensions);
    for(a=screw_locations){
        screw_hole(a, dimensions[1] / 2, 0, screw_diameter, dimensions[2]);
    }
}