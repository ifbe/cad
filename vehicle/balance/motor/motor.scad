module hexagon(size, height) {
  boxWidth = size/1.75;
  for (r = [-60, 0, 60])
    rotate([0,0,r])
      cube([boxWidth, size, height], true);
}
module shaft(){
    difference(){
        cylinder(20, r=2.5+0.2, center=true, $fn=100);
        translate([2.5+0.2, 0, 0])cube([1, 10, 20],true);
    }
}
module unknown(){
    for(j=[0:9])rotate([0,0,j*36])cube([9,1.2,20], true);
}


difference(){
    //hexagon(20.7846,10);
    hexagon(12, 10);

    //shaft();
    unknown();
}