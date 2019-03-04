

## Description
d2q9_poison_boltzmann

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_poison_boltzmann/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d2q9_poison_boltzmann/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`psi_bc`|psi at  boundary - zeta|
|`psi0`|initial psi - zeta|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`tau_psi`||tau_psi|
|`n_inf`|||
|`z`|||
|`el`|||
|`kb`|||
|`T`|||
|`epsilon`|||
|`dt`|||
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Psi`|`1`|Psi|
|`Subiter`|`1`|Subiter|
|`rho_e`|`kg/m3`|rho_e|

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
|`g[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[1]|
|`g[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[2]|
|`g[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[3]|
|`g[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[4]|
|`g[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[5]|
|`g[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[6]|
|`g[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[7]|
|`g[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[8]|
|`subiter`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|subiter|
|`psi`|![stencil](/images/st_a1n1n1p0p1p1p0.png)|psi|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`g[0]`|g[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|g[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[1]|
|`g[2]`|g[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[2]|
|`g[3]`|g[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[3]|
|`g[4]`|g[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[4]|
|`g[5]`|g[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[5]|
|`g[6]`|g[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[6]|
|`g[7]`|g[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[7]|
|`g[8]`|g[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[8]|
|`subiter`|subiter|![stencil](/images/st_a1p0p0p0p0p0p0.png)|subiter|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|
|CalcPsi|CalcPsi|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8]|psi|
|CalcSubiter|CalcSubiter|subiter|subiter|
|BaseInit|Init|_none_|g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], subiter, psi|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcPsi, CalcSubiter|
|Init|BaseInit|

