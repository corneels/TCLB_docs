

## Description
d2q9_diff

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d2q9_diff/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d2q9_diff/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`DiffInObj`|Weight of [pressure loss] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu0`||viscosity|
|`nu1`||viscosity|
|`InitDensity`||inlet pressure|
|`InletDensity`||inlet pressure|
|`OutletDensity`||inlet pressure|
|`Descent`||Optimization Descent|
|`GradientSmooth`||Gradient smoothing in OptSolve|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`RhoB`|`1`|RhoB|
|`W`|`1`|W|
|`R`|`1`|R|
|`WB`|`1`|WB|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Diff`|`1`|pressure loss|
|`nu0_D`|`1`|Gradient of objective with respect to [viscosity]|
|`nu1_D`|`1`|Gradient of objective with respect to [viscosity]|
|`InitDensity_D`|`1`|Gradient of objective with respect to [inlet pressure]|
|`InletDensity_D`|`1`|Gradient of objective with respect to [inlet pressure]|
|`OutletDensity_D`|`1`|Gradient of objective with respect to [inlet pressure]|
|`AdjointRes`|`1`|square L2 norm of adjoint change|
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
|`f0`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f0|
|`f1`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f1|
|`f2`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f2|
|`f3`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f3|
|`f4`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f4|
|`f5`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f5|
|`f6`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f6|
|`f7`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f7|
|`f8`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f8|
|`r`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|r|
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
|`r`|r|![stencil](/images/st_a1p0p0p0p0p0p0.png)|r|
|`w`|w|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, r, w|f0, f1, f2, f3, f4, f5, f6, f7, f8, r, w|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, r, w|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

