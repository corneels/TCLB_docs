

## Description
d2q9_pp_MCMP

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_pp_MCMP/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_pp_MCMP/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity_f`|inlet/outlet/init velocity 1st pop|
|`Pressure_f`|inlet/outlet/init density 1st pop|
|`Velocity_g`|inlet/outlet/init velocity 2nd pop|
|`Pressure_g`|inlet/outlet/init density 2nd pop|
|`Density`|higher density fluid - multiphase capable|
|`Density_dry`|lower density fluid  - ideal gas assumption|
|`TotalDensity1InObj`|Weight of [quantity of fluid-1] in objective|
|`TotalDensity2InObj`|Weight of [quantity of fluid-2] in objective|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*nu + 0.5)|one over relaxation time-wet|
|`omega_g`|1.0/(3*nu_g + 0.5)|one over relaxation time-dry|
|`nu`||viscosity-wet|
|`nu_g`||viscosity-dry|
|`Gc`||fluid1/2-fluid2/1 interation|
|`Gad1`||fluid1-wall interation|
|`Gad2`||fluid2-wall interation|
|`R`||EoS gas const|
|`T`||EoS reduced temp|
|`a`||EoS a|
|`b`||EoS b|
|`Smag`||Smagorinsky constant|
|`SL_U`||Shear Layer velocity|
|`SL_lambda`||Shear Layer lambda|
|`SL_delta`||Shear Layer disturbance|
|`SL_L`||Shear Layer length scale|
|`GravitationX`||Body Force|
|`GravitationY`||Body Force|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`Rhof`|`kg/m3`|Rhof|
|`Rhog`|`kg/m3`|Rhog|
|`P`|`Pa`|P|
|`U`|`m/s`|U|
|`A`|`1`|A|
|`Ff`|`N`|Ff|
|`Fg`|`N`|Fg|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`TotalDensity1`|`kg/m3`|quantity of fluid-1|
|`TotalDensity2`|`kg/m3`|quantity of fluid-2|
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|ENTROPIC|Stab|
|LES|Smagorinsky|
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
|`g[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[1]|
|`g[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[2]|
|`g[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[3]|
|`g[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[4]|
|`g[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[5]|
|`g[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[6]|
|`g[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[7]|
|`g[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[8]|
|`psi_g`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|psi_g|
|`psi_f`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|psi_f|

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
|`g[0]`|g[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|g[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[1]|
|`g[2]`|g[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[2]|
|`g[3]`|g[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[3]|
|`g[4]`|g[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[4]|
|`g[5]`|g[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[5]|
|`g[6]`|g[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[6]|
|`g[7]`|g[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[7]|
|`g[8]`|g[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[8]|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|
|CalcPsi_f|CalcPsi_f|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8]|psi_f|
|CalcPsi_g|CalcPsi_g|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|psi_g|
|BaseInit|Init|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcPsi_f, CalcPsi_g|
|Init|BaseInit, CalcPsi_f, CalcPsi_g|

