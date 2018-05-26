//Length, width, height
connector=[20.35, 4, 5];

//Rows, cols
pins = [2, 20];
pin_dimension=[0.2, 0.75, connector[2]];

spacing = [1, 2 , 0];



difference(){
    cube(connector);
    for(i = [0 : pins[0]]){
        for(j = [0 : pins[1]]){
            translate([spacing[0] * j+0.5, spacing[1] * i+0.75, spacing[2]])cube(pin_dimension);
        }
    }
}