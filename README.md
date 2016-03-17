# PrintableComb
A configurable 3d-printable comb compatible with nearly all types of hair

## Software Dependencies
* OpenSCAD
* make (optional, see note below in **Model Generation**)

## Configuration
Configuring the comb requires editing comb.scad.  These are the parameters that can be adjusted:
* **thickness** - z axis thickness (ie, height when comb is laying flat on a table)
* **length** - longer combs can hold more teeth
* **width** - wider combs have longer teeth
* **taper** - angle of the top surface of the comb. A value of 0 will produce a flat comb
* **tooth_pitch** - thickness of a single tooth (also width of the gap between teeth)
* **spine_thickness** - width of the spine; part without teeth
* **corner_radius** - radius of the corners normal to the XY plane

## Model Generation
You can generate models directly by opening comb.scad in OpenSCAD, or by running ``make`` within the project directory.
