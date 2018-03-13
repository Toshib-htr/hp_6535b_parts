module screw_hole(x, y, z, radius, height, angle){
    rotate([angle,0,0])translate([x, y, z])cylinder(r=radius, h=height, $fn=15);
}

//Breathing room for the right angle
_offset = 5;
//Order: length, height, width
dimensions = [204.88, 5.75, 2];
secondary = [dimensions[0], dimensions[2], dimensions[1] + _offset];

screw_locations = [17.59, 79.15, 127.22, 186.67];
screw_diameter = 2;

difference(){
translate([0, dimensions[2], 0])cube(dimensions);
    for(a=screw_locations){
        screw_hole(a, (dimensions[1] + dimensions[2]*2) / 2, 0, screw_diameter, dimensions[2]);
    }
}
rotate(a=[90, 0, 0])translate([0, -2, -2])difference(){
translate([0, dimensions[2], 0])cube([dimensions[0], dimensions[1] + _offset, dimensions[2]]);
    for(a=screw_locations){
        screw_hole(a + _offset, (dimensions[1] + _offset + dimensions[2]*2) / 2, 0, screw_diameter, dimensions[2]);
    }
}