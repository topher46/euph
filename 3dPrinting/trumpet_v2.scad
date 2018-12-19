
// adapted for trumpet and horn driver by Christopher Jette -jette@ccrma.stanford.edu  November/December 2018
// Actuated euphopnium mouthpiece 3D printing playground
// © 2018 by Matthew Wright - matt@ccrma.stanford.edu   
// Work done in collaboration with Geir Davidsen at CCRMA October/November 2018
//
// It is made available under the Creative Commons Attribution 4.0 International Public License: https://creativecommons.org/licenses/by/4.0/

$fn = 70;
// $fn = 70;
// Nando usually uses 64

// All units are in mm


// designed paramters

thickness = 2;
h1 = 45;  // height of thinnest part
h2 = 49;

d1_exterior = 9;
d2_exterior = 12;   // 2 + d1_exterior in Matt code
d3_interior = 34.5; // could do this @32.5 and use threads to cut into plastic (tap it) or just use tap

lip_thickness = 4;
lip_width = 10;

//hole_diameter = 4;  // to fit a 6-32 bolt

cap_cylinder_height = 25;

jack_hole_diameter = 6;


// computed parameters

// the uniform-thickness approach:
    //d1_interior = d1_exterior-2*thickness;
    // d2_interior = d2_exterior-2*thickness;

// The inner-funnel-cone-comes-to-a-tiny-hole approach
d1_interior = d1_exterior - 2;  // because 1mm is the thinnest wall
d2_interior = 7;

d3_exterior = d3_interior+2*thickness;
lip_exterior_diameter = d3_exterior+2*lip_width;
mj_height = 14;

hole_center_radius = (lip_exterior_diameter/2) - (lip_width/2);
max_height = 2*(h1+h2)+cap_cylinder_height;

echo("d1 interior=", d1_interior, "exterior=", d1_exterior);
echo("d2 interior=", d2_interior, "exterior=", d2_exterior);
echo("d3 interior=", d3_interior, "exterior=", d3_exterior);

// Rotate everything



// "Mouthpiece" aka "funnel" part:
rotate([180,0,0])

difference() {
    union() {  // The "exterior" shape
        
        cylinder(h=h1, d1=d1_exterior, d2=d2_exterior);

        translate([0,0,h1]) 
            cylinder(h=h2, d1=d2_exterior, d2=d3_exterior);
        
        //mouthpieceJoint (where lip had been) exterior
        translate([0,0,h1+h2])
        cylinder(h=mj_height, d = d3_exterior*1.5);
    }
    
    union() {  
        
        // Interior shape will be "cut out" to make the interior of the "funnel"

        cylinder(h=h1, d1=d1_interior, d2=d2_interior);

        translate([0,0,h1]) 
            cylinder(h=h2, d1=d2_interior, d2=(d3_interior));
        
            // a cylander to hold the horn driver - the mounthpieceJoint
        translate([0,0,h1+h2]) 
            cylinder(h=mj_height, d=(d3_interior));
       
        // Also cut out the four holes that let us assemble it 
   
//        translate([hole_center_radius, 0, 0])
//            cylinder(d=hole_diameter, h=max_height);
//
//        translate([-hole_center_radius, 0, 0])
//            cylinder(d=hole_diameter, h=max_height);
//
//        translate([0, hole_center_radius, 0])
//            cylinder(d=hole_diameter, h=max_height);
//
//        translate([0, -hole_center_radius, 0])
//            cylinder(d=hole_diameter, h=max_height);
    }
}







// "Cap" part

*difference() {
    union() {  // The "exterior" shape
        
        difference() { // hemisphere
            sphere(d=d3_exterior);
            translate([0,0,-(d3_exterior/2)])
                cube(size=d3_exterior, center=true);
        }
        
        // The cylindrical part that makes enough room for the actuator
        translate([0,0,-cap_cylinder_height])
            cylinder(h=cap_cylinder_height, d=d3_exterior);
        
        // the "lip"
        translate([0,0,-(cap_cylinder_height+lip_thickness)])
            cylinder(h=lip_thickness, d = lip_exterior_diameter);
    }
    
    union() {  
        
        // Interior shape will be "cut out" to make the interior 
        sphere(d=d3_interior);
        
        translate([0,0,-(2*cap_cylinder_height)])
            cylinder(h=(2*cap_cylinder_height), d=d3_interior);
       
        // Also cut out the four holes that let us assemble it 
        // better style: a for loop through 4 rotation angles
        
        translate([hole_center_radius, 0, -max_height])
            cylinder(d=hole_diameter, h=max_height*2);

        translate([-hole_center_radius, 0, -max_height])
            cylinder(d=hole_diameter, h=max_height*2);

        translate([0, hole_center_radius, -max_height])
            cylinder(d=hole_diameter, h=max_height*2);

        translate([0, -hole_center_radius, -max_height])
            cylinder(d=hole_diameter, h=max_height*2);
        
        
        // And the hole for the 1/8" jack, right at the top of the whole thing (i.e., centered at X=Y=0)
        cylinder(d=jack_hole_diameter, h=max_height*2);
    }
}
