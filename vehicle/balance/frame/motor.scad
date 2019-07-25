module driver(){
difference(){
    cube([40,50,2],center=true);

    cube([36,35,4],center=true);

    cube([40.1,25,4],center=true);

    translate([ 14.75, 21.25,0])cylinder(10,r=2,center=true,$fn=20);
    translate([-14.75, 21.25,0])cylinder(10,r=2,center=true,$fn=20);
    translate([-14.75,-21.25,0])cylinder(10,r=2,center=true,$fn=20);
    translate([ 14.75,-21.25,0])cylinder(10,r=2,center=true,$fn=20);
}
}


module board(){
translate([-30, 0,0])driver();
translate([ 30, 0,0])driver();
difference(){
    cube([20.01,50,2],center=true);

    //cylinder(10, r=2.5,center=true,$fn=50);

    translate([0,20,0])cube([15,10,10],center=true);

    //translate([0, 12.5,0])cube([9.5,16,4],center=true);
    translate([0,-12.5,0])cube([9.5,16,4],center=true);

    translate([1.25-10, 0, 0])cube([2.52,25,4],center=true);
    translate([10-1.25, 0, 0])cube([2.52,25,4],center=true);
}
}


module motor(){
//difference(){
//    translate([0,0,4])cylinder(10, r=20,center=true,$fn=50);
//    translate([0,0,4])cylinder(10.1, r=18,center=true,$fn=50);
//}
difference(){
    union(){
        translate([12.5,0,0])cube([25,50,2],center=true);
        cylinder(2, r=25,center=true,$fn=50);
    }

    cylinder(10, r=12,center=true,$fn=50);

    translate([ 15.5, 15.5,0])cylinder(10, r=2,center=true,$fn=20);
    translate([-15.5, 15.5,0])cylinder(10, r=2,center=true,$fn=20);
    translate([-15.5,-15.5,0])cylinder(10, r=2,center=true,$fn=20);
    translate([ 15.5,-15.5,0])cylinder(10, r=2,center=true,$fn=20);

    for(j=[0:11])rotate([0,0,j*360/12])
        translate([0,12.5,0])cylinder(10, r=2,center=true,$fn=10);
}
}


module bot(){
board();

translate([-49,0,-24])rotate([0,-90,180])motor();
translate([ 49,0,-24])rotate([0,-90,0])motor();

translate([0,-24,-17.75])cube([100,2,12.5],center=true);
translate([0, 24,-17.75])cube([100,2,12.5],center=true);
}


module mid(){
board();

translate([-49, 0,24])cube([2,50,50],center=true);
translate([ 49, 0,24])cube([2,50,50],center=true);

difference(){
translate([ 0, 0,48])cube([100,50,2],center=true);
translate([ 0, 0,48])cube([50,25,10],center=true);
}

difference(){
union(){
translate([ 0, 0,24])cube([100,50,2],center=true);
    translate([-16, 0,25.99])cube([4,50,2],center=true);
    translate([-16, 0,22.01])cube([4,50,2],center=true);
    translate([ 16, 0,25.99])cube([4,50,2],center=true);
    translate([ 16, 0,22.01])cube([4,50,2],center=true);
}
translate([ 0, 0,24])cube([32,100,2.4],center=true);

translate([-32, 0, 24])cube([16,21,25],center=true);
translate([ 32, 0, 24])cube([16,21,25],center=true);
}

}


//bot();
mid();