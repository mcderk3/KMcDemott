//3D PRINT THIS AS STL, then smash.

module things(num, space) {
  for (i = [0 : num-1])
    translate([space*i, 0, 0 ]) child(0);
}

things(7, 6) cube([4, 4, 14]);

translate([31, 0, 16]) cube([14, 4, 4]);
translate([24, 0, 6]) cube([6, 4, 4]);

polyhedron(
	points = [
		[10, 0, 0],
		[10, 4, 0],
		[6, 2, 0],
		[14, 2, 12]
	],
	triangles = [
		[0, 1, 2],
		[3, 1, 0],
		[3, 2, 1],
		[0, 2, 3]
	]
);

difference(){

union() {
translate([-6, 0, 10]) cube([6, 4, 4]);
translate([-6, 0, 0]) cube([6, 4, 4]);
translate([-6, 0, 0]) cube([4, 4, 6]);

translate([-14, 0, 0]) cube([6, 4, 4]);
translate([-17, 0, 0]) cube([4, 4, 8]);
translate([-17, 0, 5]) cube([9, 4, 4]);
translate([-12, 0, 5]) cube([4, 4, 9]);
translate([-17, 0, 10]) cube([6, 4, 4]);
}

union() {
translate([-6, 4, 10]) cube([4, 7, 4], center = true);

translate([-14, 4, 0]) cube([4, 6, 4], center = true);
translate([-17, 4, 0]) cube([4, 6, 4], center = true);
translate([-17, 4, 10]) cube([4, 6, 4], center = true);
}
}

module fall(num, space) {
  for (i = [0 : num-1])
    translate([space*i, 0, -20 ]) child(0);
}

fall(5, -10) cube([4, 4, 14]);

difference(){

union(){
translate([-4, 0, -10]) cube([4, 4, 4]);
translate([-2, 0, -15]) cube([2, 4, 4]);

translate([-18, 0, -10]) cube([8, 4, 4]);
translate([-18, 0, -15]) cube([8, 4, 4]);

translate([-34, 0, -20]) cube([4, 4, 4]);
translate([-44, 0, -20]) cube([4, 4, 4]);
}
union(){

translate([-2, 0, -10]) cube([4, 4, 2]);
translate([0, 2, -15]) cube([2, 4, 4]);

translate([-16, 0, -10]) cube([2, 4, 4]);
translate([-16, 3, -15]) cube([3, 4, 2]);

translate([-32, 0, -18]) cube([3, 4, 4]);
translate([-41, 0, -20]) cube([4, 4, 4]);

}
}

module apart(num, space) {
  for (i = [0 : num-1])
    translate([space*i, 0, -45 ]) child(0);
}

apart(7, 10) cube([4, 4, 14]);

difference(){

union(){
translate([54, 0, -35]) cube([10, 4, 4]);
translate([54, 0, -41]) cube([10, 4, 4]);

translate([36, 0, -35]) cube([6, 4, 4]);
translate([36, 0, -41]) cube([6, 4, 4]);
translate([35, 0, -41]) cube([4, 4, 10]);

translate([20, 0, -35]) cube([10, 4, 4]);
translate([20, 0, -41]) cube([10, 4, 4]);

translate([6, 0, -35]) cube([8, 4, 4]);

translate([-5, 0, -29]) cube([14, 4, 4]);
}

union()
translate([54, 0, -35]) cube([3, 4, 3]);
translate([56, 0, -41]) cube([2, 4, 3]);

translate([36, 0, -35]) cube([2, 4, 4]);
translate([36, 2, -41]) cube([4, 4, 4]);

translate([22, 0, -35]) cube([3, 5, 4]);
translate([21, 0, -42]) cube([4, 5, 4]);

translate([4, 0, -33]) cube([4, 4, 4]);

translate([-5, 0, -29]) cube([3, 4, 3]);

}


