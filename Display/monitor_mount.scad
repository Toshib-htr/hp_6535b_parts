length = 372;
height= 209;
width = 5;

offset = 30;

difference(){
   cube([length + offset, height + offset, width]);
    translate([offset/2, offset/2 , 0])cube([length, height, width]);
}