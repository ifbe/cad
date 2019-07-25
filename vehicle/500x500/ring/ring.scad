
difference(){
cylinder(5,r=55,center=true,$fn=100);

cylinder(10,r=45,center=true,$fn=100);

for(j=[0:11])rotate([0,0,360*j/12])
    translate([0,50,0])cylinder(20,r=2.5,center=true,$fn=20);
}