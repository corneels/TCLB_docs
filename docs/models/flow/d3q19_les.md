

## Description
d3q19_les

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q19_les/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q19_les/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|inlet velocity|
|`Density`|inlet density|
|`Turbulence`|amount of turbulence in init and on inlet|
|`FluxInObj`|Weight of [pressure loss] in objective|
|`EnergyFluxInObj`|Weight of [pressure loss] in objective|
|`PressureFluxInObj`|Weight of [pressure loss] in objective|
|`PressureDiffInObj`|Weight of [pressure loss] in objective|
|`MaterialPenaltyInObj`|Weight of [quadratic penalty for intermediate material parameter] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu`||viscosity|
|`Theta`||inlet density|
|`ForceX`||Force[x]|
|`ForceY`||Force[y]|
|`ForceZ`||Force[z]|
|`Smag`||Smagorynsky constant|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`WB`|`1`|WB|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Flux`|`1`|pressure loss|
|`EnergyFlux`|`1`|pressure loss|
|`PressureFlux`|`1`|pressure loss|
|`PressureDiff`|`1`|pressure loss|
|`MaterialPenalty`|`1`|quadratic penalty for intermediate material parameter|
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
|`f0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 1|
|`f2`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 2|
|`f3`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 3|
|`f4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 4|
|`f5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 5|
|`f6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 6|
|`f7`|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 7|
|`f8`|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 8|
|`f9`|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 9|
|`f10`|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 10|
|`f11`|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 11|
|`f12`|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 12|
|`f13`|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 13|
|`f14`|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 14|
|`f15`|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 15|
|`f16`|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 16|
|`f17`|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 17|
|`f18`|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 18|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f1`|f1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 1|
|`f2`|f2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 2|
|`f3`|f3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 3|
|`f4`|f4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 4|
|`f5`|f5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 5|
|`f6`|f6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 6|
|`f7`|f7|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 7|
|`f8`|f8|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 8|
|`f9`|f9|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 9|
|`f10`|f10|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 10|
|`f11`|f11|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 11|
|`f12`|f12|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 12|
|`f13`|f13|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 13|
|`f14`|f14|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 14|
|`f15`|f15|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 15|
|`f16`|f16|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 16|
|`f17`|f17|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 17|
|`f18`|f18|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 18|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

