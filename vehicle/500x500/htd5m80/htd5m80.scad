difference(){
translate([0,0,7.5])cylinder(15,r=62.4538,center=true,$fn=100);

translate([0,0,7.5])cylinder(20,r=37.5,center=true,$fn=100);

for(j=[0:79])rotate([0,0,360*j/80])
    translate([0,62.4538,7.5])cylinder(15,r=1.555,center=true,$fn=20);

for(j=[0:5])rotate([0,0,360*j/6])
    translate([0,50,8])cylinder(20,r=2.5,center=true,$fn=20);

for(j=[0:5])rotate([0,0,360*j/6])
    translate([0,50,10])cylinder(10.01,r=7.75,center=true,$fn=20);
}

for(j=[0:79])rotate([0,0,360*j/80])
    translate([2.4413,62.1364,7.5])cylinder(15,r=0.9076,center=true,$fn=20);