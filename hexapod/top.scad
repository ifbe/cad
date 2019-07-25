

difference(){
translate([0,0,2])cylinder(4,r=60,center=true,$fn=100);

rotate([0,0,0])translate([0,69.282,0])cylinder(50,r=30,center=true,$fn=100);
rotate([0,0,60])translate([0,69.282,0])cylinder(50,r=30,center=true,$fn=100);
rotate([0,0,120])translate([0,69.282,0])cylinder(50,r=30,center=true,$fn=100);
rotate([0,0,180])translate([0,69.282,0])cylinder(50,r=30,center=true,$fn=100);
rotate([0,0,240])translate([0,69.282,0])cylinder(50,r=30,center=true,$fn=100);
rotate([0,0,300])translate([0,69.282,0])cylinder(50,r=30,center=true,$fn=100);

rotate([0,0,0])translate([59,0,0])cylinder(50,r=3,center=true,$fn=100);
rotate([0,0,60])translate([59,0,0])cylinder(50,r=3,center=true,$fn=100);
rotate([0,0,120])translate([59,0,0])cylinder(50,r=3,center=true,$fn=100);
rotate([0,0,180])translate([59,0,0])cylinder(50,r=3,center=true,$fn=100);
rotate([0,0,240])translate([59,0,0])cylinder(50,r=3,center=true,$fn=100);
rotate([0,0,300])translate([59,0,0])cylinder(50,r=3,center=true,$fn=100);

translate([28,-9.5,0])cylinder(100,r=2,center=true,$fn=100);
translate([-28,-9.5,0])cylinder(100,r=2,center=true,$fn=100);
translate([28,9.5,0])cylinder(100,r=2,center=true,$fn=100);
translate([-28,9.5,0])cylinder(100,r=2,center=true,$fn=100);

translate([12.8,0,0])cube([2.56,50,100],center=true);
translate([-12.8,0,0])cube([2.56,50,100],center=true);
cube([25,50,100],center=true);

translate([0,0,4])cube([2.56*(11+4),2.56*(19+4),4.8],center=true);
}