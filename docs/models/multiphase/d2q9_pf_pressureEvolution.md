

## Description
d2q9_pf_pressureEvolution

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d2q9_pf_pressureEvolution/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d2q9_pf_pressureEvolution/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`PhaseField`|Initial PhaseField distribution|
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|
|`TotalDensityInObj`|Weight of [Mass conservation check] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`Density_h`||High density|
|`Density_l`||Low  density|
|`PhaseField_h`||PhaseField in Liquid|
|`PhaseField_l`||PhaseField gas|
|`W`||Anti-diffusivity coeff|
|`M`||Mobility|
|`sigma`||surface tension|
|`omega_l`|1.0/(3*Viscosity_l)|one over relaxation time (low density fluid)|
|`omega_h`|1.0/(3*Viscosity_h)|one over relaxation time (high density fluid)|
|`Viscosity_l`||kinematic viscosity|
|`Viscosity_h`||kinematic viscosity|
|`GravitationX`||applied (rho)*GravitationX|
|`GravitationY`||applied (rho)*GravitationY|
|`BuoyancyX`||applied (rho-rho_h)*BuoyancyX|
|`BuoyancyY`||applied (rho-rho_h)*BuoyancyY|
|`GmatchedX`||applied (1-phi)*GmatchedX|
|`GmatchedY`||applied (1-phi)*GmatchedY|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`PhaseField`|`1`|PhaseField|
|`U`|`m/s`|U|
|`P`|`Pa`|P|
|`Mu`|`1`|Mu|
|`Normal`|`1/m`|Normal|
|`InterfaceForce`|`N`|InterfaceForce|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`TotalDensity`|`1kg/m3`|Mass conservation check|
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
|`f[0]`|![stencil](/images/st_a2p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|![stencil](/images/st_a2n1p0p0n1p0p0.png)|f[1]|
|`f[2]`|![stencil](/images/st_a2p0n1p0p0n1p0.png)|f[2]|
|`f[3]`|![stencil](/images/st_a2p1p0p0p1p0p0.png)|f[3]|
|`f[4]`|![stencil](/images/st_a2p0p1p0p0p1p0.png)|f[4]|
|`f[5]`|![stencil](/images/st_a2n1n1p0n1n1p0.png)|f[5]|
|`f[6]`|![stencil](/images/st_a2p1n1p0p1n1p0.png)|f[6]|
|`f[7]`|![stencil](/images/st_a2p1p1p0p1p1p0.png)|f[7]|
|`f[8]`|![stencil](/images/st_a2n1p1p0n1p1p0.png)|f[8]|
|`h[0]`|![stencil](/images/st_a2p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|![stencil](/images/st_a2n1p0p0n1p0p0.png)|h[1]|
|`h[2]`|![stencil](/images/st_a2p0n1p0p0n1p0.png)|h[2]|
|`h[3]`|![stencil](/images/st_a2p1p0p0p1p0p0.png)|h[3]|
|`h[4]`|![stencil](/images/st_a2p0p1p0p0p1p0.png)|h[4]|
|`h[5]`|![stencil](/images/st_a2n1n1p0n1n1p0.png)|h[5]|
|`h[6]`|![stencil](/images/st_a2p1n1p0p1n1p0.png)|h[6]|
|`h[7]`|![stencil](/images/st_a2p1p1p0p1p1p0.png)|h[7]|
|`h[8]`|![stencil](/images/st_a2n1p1p0n1p1p0.png)|h[8]|
|`PhaseF`|![stencil](/images/st_a2n2n2p0p2p2p0.png)|PhaseF|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f[0]`|f[0]|![stencil](/images/st_a2p0p0p0p0p0p0.png)|f[0]|
|`f[1]`|f[1]|![stencil](/images/st_a2p1p0p0p1p0p0.png)|f[1]|
|`f[2]`|f[2]|![stencil](/images/st_a2p0p1p0p0p1p0.png)|f[2]|
|`f[3]`|f[3]|![stencil](/images/st_a2n1p0p0n1p0p0.png)|f[3]|
|`f[4]`|f[4]|![stencil](/images/st_a2p0n1p0p0n1p0.png)|f[4]|
|`f[5]`|f[5]|![stencil](/images/st_a2p1p1p0p1p1p0.png)|f[5]|
|`f[6]`|f[6]|![stencil](/images/st_a2n1p1p0n1p1p0.png)|f[6]|
|`f[7]`|f[7]|![stencil](/images/st_a2n1n1p0n1n1p0.png)|f[7]|
|`f[8]`|f[8]|![stencil](/images/st_a2p1n1p0p1n1p0.png)|f[8]|
|`h[0]`|h[0]|![stencil](/images/st_a2p0p0p0p0p0p0.png)|h[0]|
|`h[1]`|h[1]|![stencil](/images/st_a2p1p0p0p1p0p0.png)|h[1]|
|`h[2]`|h[2]|![stencil](/images/st_a2p0p1p0p0p1p0.png)|h[2]|
|`h[3]`|h[3]|![stencil](/images/st_a2n1p0p0n1p0p0.png)|h[3]|
|`h[4]`|h[4]|![stencil](/images/st_a2p0n1p0p0n1p0.png)|h[4]|
|`h[5]`|h[5]|![stencil](/images/st_a2p1p1p0p1p1p0.png)|h[5]|
|`h[6]`|h[6]|![stencil](/images/st_a2n1p1p0n1p1p0.png)|h[6]|
|`h[7]`|h[7]|![stencil](/images/st_a2n1n1p0n1n1p0.png)|h[7]|
|`h[8]`|h[8]|![stencil](/images/st_a2p1n1p0p1n1p0.png)|h[8]|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|PhaseInit|Init|_none_|PhaseF|
|BaseInit|Init_distributions|_none_|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8]|
|calcPhase|calcPhaseF|h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8]|PhaseF|
|BaseIter|Run|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8]|f[0], f[1], f[2], f[3], f[4], f[5], f[6], f[7], f[8], h[0], h[1], h[2], h[3], h[4], h[5], h[6], h[7], h[8]|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIter, calcPhase|
|Init|PhaseInit, BaseInit, calcPhase|

