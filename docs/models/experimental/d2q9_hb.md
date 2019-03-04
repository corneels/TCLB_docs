

## Description
d2q9_hb

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_hb/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_hb/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`OutFluxInObj`|Weight of [OutFlux] in objective|
|`DestroyedCellFluxInObj`|Weight of [DestroyedCellFlux] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*nu + 0.5)|one over relaxation time|
|`DestructionRate`||DestructionRate|
|`DestructionPower`||DestructionPower|
|`nu`||viscosity|
|`InletVelocity`||inlet velocity|
|`InletPressure`||inlet pressure|
|`InletDensity`|1.0+InletPressure/3|inlet density|
|`InletTemperature`||inlet density|
|`InitTemperature`||inlet density|
|`FluidAlfa`||inlet density|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`T`|`K`|T|
|`Q`|`1`|Q|
|`Qxx`|`1`|Qxx|
|`Qxy`|`1`|Qxy|
|`Qyy`|`1`|Qyy|
|`SS`|`N/m2`|SS|
|`U`|`m/s`|U|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`OutFlux`|`1`|OutFlux|
|`DestroyedCellFlux`|`1`|DestroyedCellFlux|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Destroy, Outlet2, Heater|
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
|`T[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|T[0]|
|`T[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|T[1]|
|`T[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|T[2]|
|`T[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|T[3]|
|`T[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|T[4]|
|`T[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|T[5]|
|`T[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|T[6]|
|`T[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|T[7]|
|`T[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|T[8]|

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
|`T[0]`|T[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|T[0]|
|`T[1]`|T[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|T[1]|
|`T[2]`|T[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|T[2]|
|`T[3]`|T[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|T[3]|
|`T[4]`|T[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|T[4]|
|`T[5]`|T[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|T[5]|
|`T[6]`|T[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|T[6]|
|`T[7]`|T[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|T[7]|
|`T[8]`|T[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|T[8]|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], T[0], T[1], T[2], T[3], T[4], T[5], T[6], T[7], T[8]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], T[0], T[1], T[2], T[3], T[4], T[5], T[6], T[7], T[8]|
|BaseInit|Init|_none_|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], T[0], T[1], T[2], T[3], T[4], T[5], T[6], T[7], T[8]|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

