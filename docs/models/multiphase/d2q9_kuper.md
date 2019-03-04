

## Description
d2q9_kuper

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_kuper/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_kuper/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Density`|zonal density|
|`Pressure1InObj`|Weight of [pressure at Obj1] in objective|
|`Pressure2InObj`|Weight of [pressure at Obj2] in objective|
|`Pressure3InObj`|Weight of [pressure at Obj3] in objective|
|`Density1InObj`|Weight of [density at Obj1] in objective|
|`Density2InObj`|Weight of [density at Obj2] in objective|
|`Density3InObj`|Weight of [density at Obj3] in objective|
|`SumUsqrInObj`|Weight of [Sumo o U**2] in objective|
|`WallForceXInObj`|Weight of [force x] in objective|
|`WallForceYInObj`|Weight of [force y] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*nu + 0.5)|relaxation factor|
|`nu`||viscosity|
|`Velocity`||inlet velocity|
|`Temperature`||temperature of the liquid/gas|
|`FAcc`||Multiplier of potential|
|`Magic`||K|
|`MagicA`||A in force calculation|
|`MagicF`||Force multiplier|
|`GravitationY`||Gravitation in the direction of y|
|`GravitationX`||Gravitation in the direction of x|
|`MovingWallVelocity`||Velocity of the MovingWall|
|`Wetting`||wetting factor|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`P`|`Pa`|P|
|`F`|`N`|F|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Pressure1`|`1`|pressure at Obj1|
|`Pressure2`|`1`|pressure at Obj2|
|`Pressure3`|`1`|pressure at Obj3|
|`Density1`|`1`|density at Obj1|
|`Density2`|`1`|density at Obj2|
|`Density3`|`1`|density at Obj3|
|`SumUsqr`|`1`|Sumo o U**2|
|`WallForceX`|`1`|force x|
|`WallForceY`|`1`|force y|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, NMovingWall, MovingWall, ESymmetry, NSymmetry, SSymmetry|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f0|
|`f1`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f1|
|`f2`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f2|
|`f3`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f3|
|`f4`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f4|
|`f5`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f5|
|`f6`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f6|
|`f7`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f7|
|`f8`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f8|
|`phi`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|phi|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f0|
|`f1`|f1|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f1|
|`f2`|f2|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f2|
|`f3`|f3|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f3|
|`f4`|f4|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f4|
|`f5`|f5|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f5|
|`f6`|f6|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f6|
|`f7`|f7|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f7|
|`f8`|f8|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f8|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8|f0, f1, f2, f3, f4, f5, f6, f7, f8|
|CalcPhi|CalcPhi|f0, f1, f2, f3, f4, f5, f6, f7, f8|phi|
|BaseInit|Init|f0, f1, f2, f3, f4, f5, f6, f7, f8|f0, f1, f2, f3, f4, f5, f6, f7, f8|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcPhi|
|Init|BaseInit, CalcPhi|

