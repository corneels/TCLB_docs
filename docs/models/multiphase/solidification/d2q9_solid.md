

## Description
d2q9_solid

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_solid/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_solid/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|fluid velocity|
|`Pressure`|pressure|
|`Temperature`|temperature|
|`Concentration`|concentration|
|`Theta0`|Angle of preferential growth|
|`OutFluxInObj`|Weight of [OutFlux] in objective|
|`MaterialInObj`|Weight of [Material] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu`||viscosity|
|`FluidAlfa`||inlet density|
|`SoluteDiffusion`||Solute diffusion coefficient in liquid|
|`C0`||Concentration 0|
|`T0`||Temperature 0|
|`Teq`||Equilibrium temperature at interface|
|`PartitionCoef`||Partition coefficient k|
|`LiquidusSlope`||Liquidus slope m|
|`GTCoef`||Gibbs-Thomson coefficient gamma|
|`SurfaceAnisotropy`||Degree of anisotropy of surface energy|
|`SoluteCapillar`||Solutal capillary length d_0|
|`Buoyancy`||Buoyancy Boussinesq approximation|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`T`|`K`|T|
|`C`|`1`|C|
|`Ct`|`1`|Ct|
|`Cl_eq`|`1`|Cl_eq|
|`Solid`|`1`|Solid|
|`U`|`m/s`|U|
|`K`|`1/m`|K|
|`Theta`|`1`|Theta|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`OutFlux`|`1`|OutFlux|
|`Material`|`1`|Material|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Heater, ForceTemperature, ForceConcentration, Seed|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|OBJECTIVE|Obj|
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
|`h[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h[1]|
|`h[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h[2]|
|`h[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h[3]|
|`h[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h[4]|
|`h[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h[5]|
|`h[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h[6]|
|`h[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h[7]|
|`h[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h[8]|
|`fi_s`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|solidification|
|`Cs`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|Cs|

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
|`h[0]`|h[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|h[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h[1]|
|`h[2]`|h[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h[2]|
|`h[3]`|h[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h[3]|
|`h[4]`|h[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h[4]|
|`h[5]`|h[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h[5]|
|`h[6]`|h[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h[6]|
|`h[7]`|h[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h[7]|
|`h[8]`|h[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h[8]|
|`fi_s`|fi_s|![stencil](/images/st_a1p0p0p0p0p0p0.png)|fi_s|
|`Cs`|Cs|![stencil](/images/st_a1p0p0p0p0p0p0.png)|Cs|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], fi_s, Cs|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], fi_s, Cs|
|BaseInit|Init|_none_|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8], fi_s, Cs|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

