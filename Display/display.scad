dimensions=[372, 240, 15];

//X-offset only
cutout_dist=20.7;
cutout_dimensions=[32.36, 11, dimensions[2]];

difference(){
    cube(dimensions);
    translate([2, 2, 2])cube([dimensions[0] - 4, dimensions[1] - 4, dimensions[2]-2]);
    
    //Cutouts
    translate([cutout_dist, 0, 0])cube(cutout_dimensions);
    translate([322.64, 0, 0])cube(cutout_dimensions);
}

post_dist = [11.7, dimensions[1] - 6.79, 0];


//Post1
translate(post_dist)cylinder(dimensions[2], 2, $fn=100);

//Move Post2 to other side of display
post_dist2 = [dimensions[0] - 4 - post_dist[0], post_dist[1], post_dist[2]];
translate(post_dist2)cylinder(dimensions[2], 2, $fn=100);