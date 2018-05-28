dimensions=[372, 240, 15];

//X-offset only
cutout_dist=20.7;
cutout_dimensions=[32.36, 11, dimensions[2]];

//Put it into a union for breaking the part into multiple stl's
union(){
    difference(){
        cube(dimensions);
        translate([2, 2, 2])cube([dimensions[0] - 4, dimensions[1] - 4, dimensions[2]-2]);
        
        //Cutouts
        translate([cutout_dist, 0, 0])cube(cutout_dimensions);
        translate([322.64, 0, 0])cube(cutout_dimensions);
    }

    //Border 1
    translate([322.64-3, 0, 0])cube([3,cutout_dimensions[1],dimensions[2]]);
    translate([322.64-3, cutout_dimensions[1], 0])cube([cutout_dimensions[0]+3,3,dimensions[2]]);
    translate([322.64+cutout_dimensions[0]-3, 0, 0])cube([3,cutout_dimensions[1],dimensions[2]]);

    //Border 2
    translate([cutout_dist, 0, 0])cube([3,cutout_dimensions[1],dimensions[2]]);
    translate([cutout_dist, cutout_dimensions[1], 0])cube([cutout_dimensions[0]+3,3,dimensions[2]]);
    translate([cutout_dist+cutout_dimensions[0], 0, 0])cube([3,cutout_dimensions[1],dimensions[2]]);

    post_dist = [11.7, dimensions[1] - 6.79, 0];

    //Post1
    translate(post_dist)cylinder(6, 1, $fn=100);
    //cube1
    translate([post_dist[0] + 2.08, post_dist[1]- 1.5, 0])cube([2.33,2.33, 6]);

    post_dist2 = [dimensions[0] - 4 - post_dist[0], post_dist[1], post_dist[2]];

    //Move Post2 to other side of display
    translate(post_dist2)cylinder(6, 1, $fn=100);
    //cube1
    translate([post_dist2[0] + 2.08, post_dist2[1]- 1.5, 0])cube([2.33,2.33, 6]);
}