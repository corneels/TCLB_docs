

## Description
d2q9_ShanChen

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_ShanChen/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_ShanChen/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`GravitationX`|body/external acceleration|
|`GravitationY`|body/external acceleration|
|`Density`|Density|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*viscosity+0.5)|inverse of relaxation time|
|`viscosity`||kinematic viscosity|
|`G_ff`||fluid-fluid interaction strength|
|`G_sf`||solid-fluid interaction strength|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`U`|`m/s`|U|
|`Rho`|`kg/m3`|Rho|
|`Psi`|`1`|Psi|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
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
|`f[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f[1]|
|`f[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f[2]|
|`f[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f[3]|
|`f[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f[4]|
|`f[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f[5]|
|`f[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f[6]|
|`f[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f[7]|
|`f[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f[8]|
|`rho`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|rho|
|`psi`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|psi|
|`neighbour_type`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|neighbour_type|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f[0]`|f[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|f[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f[1]|
|`f[2]`|f[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f[2]|
|`f[3]`|f[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f[3]|
|`f[4]`|f[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f[4]|
|`f[5]`|f[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f[5]|
|`f[6]`|f[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f[6]|
|`f[7]`|f[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f[7]|
|`f[8]`|f[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f[8]|
|`rho`|rho|![stencil](/images/st_a1p0p0p0p0p0p0.png)|rho|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseInit|Init|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], rho|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], rho, neighbour_type|
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], rho|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], rho, neighbour_type|
|PsiIteration|calcPsi|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], rho|psi|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Init|BaseInit, PsiIteration|
|Iteration|BaseIteration, PsiIteration|

