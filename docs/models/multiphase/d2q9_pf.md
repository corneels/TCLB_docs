

## Description
d2q9_pf

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/d2q9_pf/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/d2q9_pf/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`PhaseField`|Phase Field marker scalar|
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`IntWidth`||Interface width|
|`Mobility`||Mobility|
|`OverwriteVelocityField`||OverwriteVelocityField|
|`RelaxationRate`|1.0/(3*Viscosity + 0.5)|one over relaxation time|
|`Viscosity`||viscosity|
|`GravitationX`||GravitationX|
|`GravitationY`||GravitationY|
|`S2`|1-RelaxationRate|MRT Sx|
|`S3`||MRT Sx|
|`S4`||MRT Sx|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Normal`|`1/m`|Normal|
|`PhaseField`|`1`|PhaseField|
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, NPressure, SPressure|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|OBJECTIVE|Inlet, Outlet|
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
|`h[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h[1]|
|`h[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h[2]|
|`h[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h[3]|
|`h[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h[4]|
|`h[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h[5]|
|`h[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h[6]|
|`h[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h[7]|
|`h[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h[8]|
|`BC[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[0]|
|`BC[1]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[1]|

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
|`h[0]`|h[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|h[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h[1]|
|`h[2]`|h[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h[2]|
|`h[3]`|h[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h[3]|
|`h[4]`|h[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h[4]|
|`h[5]`|h[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h[5]|
|`h[6]`|h[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h[6]|
|`h[7]`|h[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h[7]|
|`h[8]`|h[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h[8]|
|`BC[0]`|BC[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[0]|
|`BC[1]`|BC[1]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[1]|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], BC[0], BC[1]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], BC[0], BC[1]|
|BaseInit|Init|_none_|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], BC[0], BC[1]|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

