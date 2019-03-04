

## Description
d2q9_adj

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_adj/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_adj/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|inlet velocity|
|`Pressure`|inlet pressure|
|`Porocity`|initial porocity of Porous nodes|
|`DragInObj`|Weight of [pressure loss] in objective|
|`LiftInObj`|Weight of [pressure loss] in objective|
|`MaterialPenaltyInObj`|Weight of [material penalty] in objective|
|`MaterialInObj`|Weight of [material] in objective|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1-1.0/(3*nu + 0.5)|one over relaxation time|
|`nu`||viscosity|
|`ForceX`||Gravitation in the direction of x|
|`ForceY`||Gravitation in the direction of y|
|`PorocityGamma`|1.0 - exp(PorocityTheta)|gamma in hiperbolic transformation of porocity (-infty,1)|
|`PorocityTheta`||theta in hiperbolic transformation of porocity|
|`Descent`||Optimization Descent|
|`GradientSmooth`||Gradient smoothing in OptSolve|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`RhoB`|`1`|RhoB|
|`UB`|`1`|UB|
|`W`|`1`|W|
|`WB`|`1`|WB|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Drag`|`1`|pressure loss|
|`Lift`|`1`|pressure loss|
|`MaterialPenalty`|`1`|material penalty|
|`Material`|`1`|material|
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`omega_D`|`1`|Gradient of objective with respect to [one over relaxation time]|
|`nu_D`|`1`|Gradient of objective with respect to [viscosity]|
|`ForceX_D`|`1`|Gradient of objective with respect to [Gravitation in the direction of x]|
|`ForceY_D`|`1`|Gradient of objective with respect to [Gravitation in the direction of y]|
|`PorocityGamma_D`|`1`|Gradient of objective with respect to [gamma in hiperbolic transformation of porocity (-infty,1)]|
|`PorocityTheta_D`|`1`|Gradient of objective with respect to [theta in hiperbolic transformation of porocity]|
|`AdjointRes`|`1`|square L2 norm of adjoint change|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|OBJECTIVE|Inlet, Outlet|
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
|`w`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

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
|`w`|w|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, w|f0, f1, f2, f3, f4, f5, f6, f7, f8, w|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, w|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

