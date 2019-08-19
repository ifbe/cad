module hexagon(size, height) {
  boxWidth = size/1.75;
  for (r = [-60, 0, 60])
    rotate([0,0,r])
      cube([boxWidth, size, height], true);
}

module body(){
difference(){
    hexagon(300, 25);
    cylinder(100, r=140, center=true, $fn=100);
}
}
module screw(){
    for(j=[-75,-50,-25,0,25,50,75])
        translate([j,0,0])
            rotate([90, 0, 0])
                cylinder(1000, r=2, center=true, $fn=50);

    for(j=[-75,-50,-25,0,25,50,75])
        translate([j,0,0])
            rotate([90, 0, 0])
                cylinder(290, r=4, center=true, $fn=50);
}

difference(){
    body();
    for(j=[-60,0,60])rotate([0,0,j])screw();
}

difference(){
    cylinder(2, r=12.5, center=true, $fn=100);
    //cylinder(100, r=2.5, center=true, $fn=100);

    translate([0,  8,0])cylinder(100, r=1.5+0.2, center=true, $fn=100);
    translate([0, -8,0])cylinder(100, r=1.5+0.2, center=true, $fn=100);
    translate([ 9.5,0,0])cylinder(100, r=1.5+0.2, center=true, $fn=100);
    translate([-9.5,0,0])cylinder(100, r=1.5+0.2, center=true, $fn=100);
}

translate([70+12.5/2,0,0])cube([140-12.5, 2, 10],center=true);