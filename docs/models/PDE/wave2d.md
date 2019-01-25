

## Description
wave2d

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/wave2d/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/wave2d/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`TotalDiffInObj`|Weight of [total diff] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`WaveK`||coeff|
|`SolidH`||H of solid|
|`Loss`||u multipiler|
|`Descent`||Optimization Descent|
|`GradientSmooth`||Gradient smoothing in OptSolve|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`H`|`1`|H|
|`W`|`1`|W|
|`WB`|`1`|WB|
|`HB`|`1`|HB|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`TotalDiff`|`1`|total diff|
|`WaveK_D`|`1`|Gradient of objective with respect to [coeff]|
|`SolidH_D`|`1`|Gradient of objective with respect to [H of solid]|
|`Loss_D`|`1`|Gradient of objective with respect to [u multipiler]|
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
|`h`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h|
|`u`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|u|
|`h1`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h1|
|`h2`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h2|
|`h3`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h3|
|`h4`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h4|
|`w`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`h`|h|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h|
|`u`|u|![stencil](/images/st_a1p0p0p0p0p0p0.png)|u|
|`h1`|h1|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h1|
|`h2`|h2|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h2|
|`h3`|h3|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h3|
|`h4`|h4|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h4|
|`w`|w|![stencil](/images/st_a1p0p0p0p0p0p0.png)|w|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|h, u, h1, h2, h3, h4, w|h, u, h1, h2, h3, h4, w|
|BaseInit|Init|_none_|h, u, h1, h2, h3, h4, w|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

