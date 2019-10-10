

## Description
d3q19_heat_adj

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q19_heat_adj/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q19_heat_adj/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|inlet velocity|
|`Pressure`|inlet pressure|
|`Temperature`|inlet density|
|`LimitTemperature`|inlet density|
|`HeatFluxInObj`|Weight of [Flux of heat] in objective|
|`HeatSquareFluxInObj`|Weight of [Flux of temperature squered] in objective|
|`FluxInObj`|Weight of [Volume flux] in objective|
|`TemperatureAtPointInObj`|Weight of [Integral of temperature] in objective|
|`HighTemperatureInObj`|Weight of [Penalty for high temperature] in objective|
|`LowTemperatureInObj`|Weight of [Penalty for low temperature] in objective|
|`MaterialPenaltyInObj`|Weight of [Quadratic penalty for intermediate material parameter] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu`||viscosity|
|`FluidAlpha`||inlet density|
|`SolidAlpha`||Heat conductivity of solid|
|`Buoyancy`||Buoyancy coefficient of temperature|
|`PorocityGamma`|1.0 - exp(PorocityTheta)|Gamma in hiperbolic transformation of porocity (-infty,1)|
|`PorocityTheta`||Theta in hiperbolic transformation of porocity|
|`Descent`||Optimization Descent|
|`GradientSmooth`||Gradient smoothing in OptSolve|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`W`|`1`|W|
|`WB`|`1`|WB|
|`Rho`|`1`|Rho|
|`T`|`1`|T|
|`U`|`1`|U|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`HeatFlux`|`Km3/s`|Flux of heat|
|`HeatSquareFlux`|`K2m3/s`|Flux of temperature squered|
|`Flux`|`m3/s`|Volume flux|
|`TemperatureAtPoint`|`K`|Integral of temperature|
|`HighTemperature`|`1`|Penalty for high temperature|
|`LowTemperature`|`1`|Penalty for low temperature|
|`MaterialPenalty`|`m3`|Quadratic penalty for intermediate material parameter|
|`nu_D`|`1`|Gradient of objective with respect to [viscosity]|
|`FluidAlpha_D`|`1`|Gradient of objective with respect to [inlet density]|
|`SolidAlpha_D`|`1`|Gradient of objective with respect to [Heat conductivity of solid]|
|`Buoyancy_D`|`1`|Gradient of objective with respect to [Buoyancy coefficient of temperature]|
|`PorocityGamma_D`|`1`|Gradient of objective with respect to [Gamma in hiperbolic transformation of porocity (-infty,1)]|
|`PorocityTheta_D`|`1`|Gradient of objective with respect to [Theta in hiperbolic transformation of porocity]|
|`AdjointRes`|`1`|square L2 norm of adjoint change|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Heater, HeatSource|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|OBJECTIVE|Thermometer|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|flow LB density F 0|
|`f1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|flow LB density F 1|
|`f2`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|flow LB density F 2|
|`f3`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|flow LB density F 3|
|`f4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|flow LB density F 4|
|`f5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|flow LB density F 5|
|`f6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|flow LB density F 6|
|`f7`|![stencil](/images/st_b1n1n1p0n1n1p0.png)|flow LB density F 7|
|`f8`|![stencil](/images/st_b1p1n1p0p1n1p0.png)|flow LB density F 8|
|`f9`|![stencil](/images/st_b1n1p1p0n1p1p0.png)|flow LB density F 9|
|`f10`|![stencil](/images/st_b1p1p1p0p1p1p0.png)|flow LB density F 10|
|`f11`|![stencil](/images/st_b1n1p0n1n1p0n1.png)|flow LB density F 11|
|`f12`|![stencil](/images/st_b1p1p0n1p1p0n1.png)|flow LB density F 12|
|`f13`|![stencil](/images/st_b1n1p0p1n1p0p1.png)|flow LB density F 13|
|`f14`|![stencil](/images/st_b1p1p0p1p1p0p1.png)|flow LB density F 14|
|`f15`|![stencil](/images/st_b1p0n1n1p0n1n1.png)|flow LB density F 15|
|`f16`|![stencil](/images/st_b1p0p1n1p0p1n1.png)|flow LB density F 16|
|`f17`|![stencil](/images/st_b1p0n1p1p0n1p1.png)|flow LB density F 17|
|`f18`|![stencil](/images/st_b1p0p1p1p0p1p1.png)|flow LB density F 18|
|`g0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|heat LB density G 0|
|`g1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|heat LB density G 1|
|`g2`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|heat LB density G 2|
|`g3`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|heat LB density G 3|
|`g4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|heat LB density G 4|
|`g5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|heat LB density G 5|
|`g6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|heat LB density G 6|
|`w`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|weight fluid-solid|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|flow LB density F 0|
|`f1`|f1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|flow LB density F 1|
|`f2`|f2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|flow LB density F 2|
|`f3`|f3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|flow LB density F 3|
|`f4`|f4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|flow LB density F 4|
|`f5`|f5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|flow LB density F 5|
|`f6`|f6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|flow LB density F 6|
|`f7`|f7|![stencil](/images/st_b1p1p1p0p1p1p0.png)|flow LB density F 7|
|`f8`|f8|![stencil](/images/st_b1n1p1p0n1p1p0.png)|flow LB density F 8|
|`f9`|f9|![stencil](/images/st_b1p1n1p0p1n1p0.png)|flow LB density F 9|
|`f10`|f10|![stencil](/images/st_b1n1n1p0n1n1p0.png)|flow LB density F 10|
|`f11`|f11|![stencil](/images/st_b1p1p0p1p1p0p1.png)|flow LB density F 11|
|`f12`|f12|![stencil](/images/st_b1n1p0p1n1p0p1.png)|flow LB density F 12|
|`f13`|f13|![stencil](/images/st_b1p1p0n1p1p0n1.png)|flow LB density F 13|
|`f14`|f14|![stencil](/images/st_b1n1p0n1n1p0n1.png)|flow LB density F 14|
|`f15`|f15|![stencil](/images/st_b1p0p1p1p0p1p1.png)|flow LB density F 15|
|`f16`|f16|![stencil](/images/st_b1p0n1p1p0n1p1.png)|flow LB density F 16|
|`f17`|f17|![stencil](/images/st_b1p0p1n1p0p1n1.png)|flow LB density F 17|
|`f18`|f18|![stencil](/images/st_b1p0n1n1p0n1n1.png)|flow LB density F 18|
|`g0`|g0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|heat LB density G 0|
|`g1`|g1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|heat LB density G 1|
|`g2`|g2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|heat LB density G 2|
|`g3`|g3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|heat LB density G 3|
|`g4`|g4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|heat LB density G 4|
|`g5`|g5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|heat LB density G 5|
|`g6`|g6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|heat LB density G 6|
|`w`|w|![stencil](/images/st_b1p0p0p0p0p0p0.png)|weight fluid-solid|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, g0, g1, g2, g3, g4, g5, g6, w|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, g0, g1, g2, g3, g4, g5, g6, w|
|BaseInit|Init|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, g0, g1, g2, g3, g4, g5, g6, w|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

