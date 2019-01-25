

## Description
d2q9_npe_guo

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/d2q9_npe_guo/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/d2q9_npe_guo/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`rho_bc`|fluid density at  boundary|
|`phi_bc`|phi at  boundary|
|`psi_bc`|psi at  boundary - zeta|
|`TotalMomentumInObj`|Weight of [TotalMomentum] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`n_inf_0`|||
|`n_inf_1`|||
|`el`|||
|`el_kbT`|||
|`epsilon`|||
|`dt`|||
|`psi0`|||
|`phi0`|||
|`ez`|||
|`Ex`|||
|`D`||Ion diffusivity|
|`nu`||viscosity|
|`t_to_s`||time scale ratio|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`F`|`kgm/s2`|F|
|`U`|`m/s`|U|
|`Rho`|`kg/m3`|Rho|
|`n0`|`An/m3`|n0|
|`n1`|`An/m3`|n1|
|`Psi`|`V`|Psi|
|`Phi`|`V`|Phi|
|`GradPsi`|`V/m`|GradPsi|
|`GradPhi`|`V/m`|GradPhi|
|`rho_e`|`C/m3`|rho_e|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`TotalMomentum`|`1`|TotalMomentum|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, SSymmetry, NSymmetry, NVelocity, SVelocity|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`phi[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|phi[0]|
|`phi[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|phi[1]|
|`phi[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|phi[2]|
|`phi[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|phi[3]|
|`phi[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|phi[4]|
|`phi[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|phi[5]|
|`phi[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|phi[6]|
|`phi[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|phi[7]|
|`phi[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|phi[8]|
|`g[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[1]|
|`g[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[2]|
|`g[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[3]|
|`g[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[4]|
|`g[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[5]|
|`g[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[6]|
|`g[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[7]|
|`g[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[8]|
|`f[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f[1]|
|`f[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f[2]|
|`f[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f[3]|
|`f[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f[4]|
|`f[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f[5]|
|`f[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f[6]|
|`f[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f[7]|
|`f[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f[8]|
|`h_0[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h_0[0]|
|`h_0[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h_0[1]|
|`h_0[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h_0[2]|
|`h_0[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h_0[3]|
|`h_0[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h_0[4]|
|`h_0[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h_0[5]|
|`h_0[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h_0[6]|
|`h_0[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h_0[7]|
|`h_0[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h_0[8]|
|`h_1[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h_1[0]|
|`h_1[1]`|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h_1[1]|
|`h_1[2]`|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h_1[2]|
|`h_1[3]`|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h_1[3]|
|`h_1[4]`|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h_1[4]|
|`h_1[5]`|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h_1[5]|
|`h_1[6]`|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h_1[6]|
|`h_1[7]`|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h_1[7]|
|`h_1[8]`|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h_1[8]|
|`BC[0]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[0]|
|`BC[1]`|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[1]|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`phi[0]`|phi[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|phi[0]|
|`phi[1]`|phi[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|phi[1]|
|`phi[2]`|phi[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|phi[2]|
|`phi[3]`|phi[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|phi[3]|
|`phi[4]`|phi[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|phi[4]|
|`phi[5]`|phi[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|phi[5]|
|`phi[6]`|phi[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|phi[6]|
|`phi[7]`|phi[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|phi[7]|
|`phi[8]`|phi[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|phi[8]|
|`g[0]`|g[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|g[0]|
|`g[1]`|g[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|g[1]|
|`g[2]`|g[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|g[2]|
|`g[3]`|g[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|g[3]|
|`g[4]`|g[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|g[4]|
|`g[5]`|g[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|g[5]|
|`g[6]`|g[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|g[6]|
|`g[7]`|g[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|g[7]|
|`g[8]`|g[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|g[8]|
|`f[0]`|f[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|f[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|f[1]|
|`f[2]`|f[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|f[2]|
|`f[3]`|f[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|f[3]|
|`f[4]`|f[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|f[4]|
|`f[5]`|f[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|f[5]|
|`f[6]`|f[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|f[6]|
|`f[7]`|f[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|f[7]|
|`f[8]`|f[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|f[8]|
|`h_0[0]`|h_0[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h_0[0]|
|`h_0[1]`|h_0[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h_0[1]|
|`h_0[2]`|h_0[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h_0[2]|
|`h_0[3]`|h_0[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h_0[3]|
|`h_0[4]`|h_0[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h_0[4]|
|`h_0[5]`|h_0[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h_0[5]|
|`h_0[6]`|h_0[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h_0[6]|
|`h_0[7]`|h_0[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h_0[7]|
|`h_0[8]`|h_0[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h_0[8]|
|`h_1[0]`|h_1[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|h_1[0]|
|`h_1[1]`|h_1[1]|![stencil](/images/st_a1p1p0p0p1p0p0.png)|h_1[1]|
|`h_1[2]`|h_1[2]|![stencil](/images/st_a1p0p1p0p0p1p0.png)|h_1[2]|
|`h_1[3]`|h_1[3]|![stencil](/images/st_a1n1p0p0n1p0p0.png)|h_1[3]|
|`h_1[4]`|h_1[4]|![stencil](/images/st_a1p0n1p0p0n1p0.png)|h_1[4]|
|`h_1[5]`|h_1[5]|![stencil](/images/st_a1p1p1p0p1p1p0.png)|h_1[5]|
|`h_1[6]`|h_1[6]|![stencil](/images/st_a1n1p1p0n1p1p0.png)|h_1[6]|
|`h_1[7]`|h_1[7]|![stencil](/images/st_a1n1n1p0n1n1p0.png)|h_1[7]|
|`h_1[8]`|h_1[8]|![stencil](/images/st_a1p1n1p0p1n1p0.png)|h_1[8]|
|`BC[0]`|BC[0]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[0]|
|`BC[1]`|BC[1]|![stencil](/images/st_a1p0p0p0p0p0p0.png)|BC[1]|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|phi[0], phi[1], phi[2], phi[3], phi[4], phi[5], phi[6], phi[7], phi[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h_0[0], h_0[1], h_0[2], h_0[3], h_0[4], h_0[5], h_0[6], h_0[7], h_0[8], h_1[0], h_1[1], h_1[2], h_1[3], h_1[4], h_1[5], h_1[6], h_1[7], h_1[8], BC[0], BC[1]|phi[0], phi[1], phi[2], phi[3], phi[4], phi[5], phi[6], phi[7], phi[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h_0[0], h_0[1], h_0[2], h_0[3], h_0[4], h_0[5], h_0[6], h_0[7], h_0[8], h_1[0], h_1[1], h_1[2], h_1[3], h_1[4], h_1[5], h_1[6], h_1[7], h_1[8], BC[0], BC[1]|
|BaseInit|Init|_none_|phi[0], phi[1], phi[2], phi[3], phi[4], phi[5], phi[6], phi[7], phi[8], g[0], g[1], g[2], g[3], g[4], g[5], g[6], g[7], g[8], f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h_0[0], h_0[1], h_0[2], h_0[3], h_0[4], h_0[5], h_0[6], h_0[7], h_0[8], h_1[0], h_1[1], h_1[2], h_1[3], h_1[4], h_1[5], h_1[6], h_1[7], h_1[8], BC[0], BC[1]|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

