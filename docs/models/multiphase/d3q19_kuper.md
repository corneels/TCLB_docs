

## Description
d3q19_kuper

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d3q19_kuper/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d3q19_kuper/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Density`|zonal density|
|`MovingWallForceXInObj`|Weight of [force x] in objective|
|`MovingWallForceYInObj`|Weight of [force y] in objective|
|`MovingWallForceZInObj`|Weight of [force Z] in objective|
|`Pressure1InObj`|Weight of [pressure at Obj1] in objective|
|`Pressure2InObj`|Weight of [pressure at Obj2] in objective|
|`Pressure3InObj`|Weight of [pressure at Obj3] in objective|
|`Density1InObj`|Weight of [density at Obj1] in objective|
|`Density2InObj`|Weight of [density at Obj2] in objective|
|`Density3InObj`|Weight of [density at Obj3] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*nu + 0.5)|one over relaxation time|
|`nu`||viscosity|
|`InletVelocity`||inlet velocity|
|`Temperature`||temperature of the liquid/gas|
|`FAcc`||Multiplier of potential|
|`BoundaryVelocity_x`||boundary velocity|
|`BoundaryVelocity_y`||boundary velocity|
|`BoundaryVelocity_z`||boundary velocity|
|`Boundary_rho`||boundary velocity|
|`Magic`||K|
|`MagicA`||A in force calculation|
|`GravitationY`||Gravitation in the direction of y|
|`GravitationX`||Gravitation in the direction of x|
|`GravitationZ`||Gravitation in the direction of x|
|`MovingWallVelocity`||Velocity of the MovingWall|
|`Wetting`||wetting factor|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`P`|`Pa`|P|
|`Phi`|`1`|Phi|
|`F`|`N`|F|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`MovingWallForceX`|`1`|force x|
|`MovingWallForceY`|`1`|force y|
|`MovingWallForceZ`|`1`|force Z|
|`Pressure1`|`1`|pressure at Obj1|
|`Pressure2`|`1`|pressure at Obj2|
|`Pressure3`|`1`|pressure at Obj3|
|`Density1`|`1`|density at Obj1|
|`Density2`|`1`|density at Obj2|
|`Density3`|`1`|density at Obj3|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 1|
|`f2`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 2|
|`f3`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 3|
|`f4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 4|
|`f5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 5|
|`f6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 6|
|`f7`|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 7|
|`f8`|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 8|
|`f9`|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 9|
|`f10`|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 10|
|`f11`|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 11|
|`f12`|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 12|
|`f13`|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 13|
|`f14`|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 14|
|`f15`|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 15|
|`f16`|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 16|
|`f17`|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 17|
|`f18`|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 18|
|`phi`|![stencil](/images/st_b1n1n1n1p1p1p1.png)|phi|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f1`|f1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 1|
|`f2`|f2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 2|
|`f3`|f3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 3|
|`f4`|f4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 4|
|`f5`|f5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 5|
|`f6`|f6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 6|
|`f7`|f7|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 7|
|`f8`|f8|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 8|
|`f9`|f9|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 9|
|`f10`|f10|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 10|
|`f11`|f11|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 11|
|`f12`|f12|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 12|
|`f13`|f13|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 13|
|`f14`|f14|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 14|
|`f15`|f15|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 15|
|`f16`|f16|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 16|
|`f17`|f17|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 17|
|`f18`|f18|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 18|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|
|CalcPhi|CalcPhi|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|phi|
|BaseInit|Init|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcPhi|
|Init|BaseInit, CalcPhi|

