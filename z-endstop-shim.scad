include <MCAD/units/metric.scad>
use <MCAD/shapes/polyhole.scad>

module z_endstop_shim (
    shim_size = 1.6,
    width = 20,
    wall_thickness = 3,
    wall_height = 5,
    wood_thickness = 4.5
)
{
    total_height = wall_height + shim_size;
    total_thickness = wall_thickness * 2 + wood_thickness;

    // floor
    cube ([width, wall_thickness * 2 + wood_thickness, shim_size]);

    // walls
    cube ([width, wall_thickness, total_height]);

    translate ([0, wood_thickness + wall_thickness, -epsilon])
    cube ([width, wall_thickness, total_height]);
}

z_endstop_shim ();
