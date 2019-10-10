

## Description
d2q9_plate

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d2q9_plate/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d2q9_plate/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`nu`|viscosity|
|`VelocityY`|inlet/outlet/init velocity|
|`VelocityX`|inlet/outlet/init velocity|
|`Density`|inlet/outlet/init density|
|`PX`|plate position X|
|`PY`|plate position Y|
|`PR`|plate angle|
|`ExternalForceX`|external force x|
|`ExternalForceY`|external force y|
|`ForceXInObj`|Weight of [reaction force X] in objective|
|`ForceYInObj`|Weight of [reaction force Y] in objective|
|`MomentInObj`|Weight of [reaction force X] in objective|
|`PowerXInObj`|Weight of [reaction force Y] in objective|
|`PowerYInObj`|Weight of [reaction force X] in objective|
|`PowerRInObj`|Weight of [reaction force Y] in objective|
|`PowerInObj`|Weight of [reaction force X] in objective|
|`Power2InObj`|Weight of [reaction force Y] in objective|
|`VolumeWInObj`|Weight of [Volume of moving body] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`Smag`||inlet density|
|`PDX`||plate diameter X|
|`PDY`||plate diameter Y|
|`PRAD`||cylinder radious|
|`SM`||smoothing diameter|
|`SM_M`||smoothing bias|
|`EPSF`||boundary function, 0 - linear boundary,1 - third order boundary|
|`BF`||beta function bool|
|`Descent`||Optimization Descent|
|`GradientSmooth`||Gradient smoothing in OptSolve|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`U_AVG`|`m/s`|U_AVG|
|`F_AVG`|`N/m3`|F_AVG|
|`Solid`|`1`|Solid|
|`RhoB`|`1`|RhoB|
|`UB`|`1`|UB|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`ForceX`|`N/m`|reaction force X|
|`ForceY`|`N/m`|reaction force Y|
|`Moment`|`N`|reaction force X|
|`PowerX`|`W/m`|reaction force Y|
|`PowerY`|`W/m`|reaction force X|
|`PowerR`|`W/m`|reaction force Y|
|`Power`|`W/m`|reaction force X|
|`Power2`|`W/m`|reaction force Y|
|`VolumeW`|`m2`|Volume of moving body|
|`Smag_D`|`1`|Gradient of objective with respect to [inlet density]|
|`PDX_D`|`1`|Gradient of objective with respect to [plate diameter X]|
|`PDY_D`|`1`|Gradient of objective with respect to [plate diameter Y]|
|`PRAD_D`|`1`|Gradient of objective with respect to [cylinder radious]|
|`SM_D`|`1`|Gradient of objective with respect to [smoothing diameter]|
|`SM_M_D`|`1`|Gradient of objective with respect to [smoothing bias]|
|`EPSF_D`|`1`|Gradient of objective with respect to [boundary function, 0 - linear boundary,1 - third order boundary]|
|`BF_D`|`1`|Gradient of objective with respect to [beta function bool]|
|`AdjointRes`|`1`|square L2 norm of adjoint change|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, NVelocity, SPressure|
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
|`avg_ux`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_ux|
|`avg_uy`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_uy|
|`avg_fx`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_fx|
|`avg_fy`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_fy|

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
|`avg_ux`|avg_ux|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_ux|
|`avg_uy`|avg_uy|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_uy|
|`avg_fx`|avg_fx|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_fx|
|`avg_fy`|avg_fy|![stencil](/images/st_a1p0p0p0p0p0p0.png)|avg_fy|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, avg_ux, avg_uy, avg_fx, avg_fy|f0, f1, f2, f3, f4, f5, f6, f7, f8, avg_ux, avg_uy, avg_fx, avg_fy|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, avg_ux, avg_uy, avg_fx, avg_fy|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

