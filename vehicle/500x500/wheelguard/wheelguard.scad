module base(){
translate([0,0,0.4])cylinder(0.8,r=75,center=true,$fn=100);
    
translate([0,0,0.5])cylinder(1,r=62.5,center=true,$fn=100);

for(j=[0:5])rotate([0,0,360*j/6])
    translate([0,50,5.4])cylinder(10.8,r=7.25,center=true,$fn=20);
}

difference(){
base();

cylinder(10,r=37.5,center=true,$fn=100);

for(j=[0:5])rotate([0,0,360*j/6])
    translate([0,50,10])cylinder(20,r=2.5,center=true,$fn=20);

for(j=[0:5])rotate([0,0,360*j/6])
    translate([0,50,3])cylinder(6.02,r=5,center=true,$fn=20);
}