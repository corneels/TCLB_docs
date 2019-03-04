

## Description
d3q27_cumulant_AVG_IB_SMAG

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d3q27_cumulant_AVG_IB_SMAG/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d3q27_cumulant_AVG_IB_SMAG/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|Inlet velocity|
|`Pressure`|Inlet pressure|
|`Turbulence`|Turbulence intensity|
|`FluxInObj`|Weight of [Volume flux] in objective|
|`DragInObj`|Weight of [Force exerted on body in X-direction] in objective|
|`LiftInObj`|Weight of [Force exerted on body in Z-direction] in objective|
|`LateralInObj`|Weight of [Force exerted on body in Y-direction] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu`||Viscosity|
|`nubuffer`||Viscosity in the buffer layer|
|`GalileanCorrection`||Galilean correction term|
|`ForceX`||Force force X|
|`ForceY`||Force force Y|
|`ForceZ`||Force force Z|
|`Omega`||relaxation rate for 3rd order cumulants|
|`Smag`||Smagorinsky coefficient for SGS modeling|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`P`|`Pa`|P|
|`U`|`m/s`|U|
|`KinE`|`1`|Turbulent kinetic energy|
|`ReStr`|`1`|Reynolds stress off-diagonal component|
|`Dissipation`|`1`|Dissipation e|
|`avgU`|`m/s`|avgU|
|`varU`|`1`|varU|
|`averageP`|`Pa`|averageP|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Flux`|`m3/s`|Volume flux|
|`Drag`|`N`|Force exerted on body in X-direction|
|`Lift`|`N`|Force exerted on body in Z-direction|
|`Lateral`|`N`|Force exerted on body in Y-direction|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|NSymmetry, SSymmetry|
|BODY|Body|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, Buffer, WVelocityTurbulent, NVelocity, SVelocity, NPressure, SPressure|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|HO_BOUNDARY|IB|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f000`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f100`|![stencil](/images/st_b1n1p0p0p0p0p0.png)|density F 1|
|`f200`|![stencil](/images/st_b1p0p0p0p1p0p0.png)|density F 2|
|`f010`|![stencil](/images/st_b1p0n1p0p0p0p0.png)|density F 3|
|`f110`|![stencil](/images/st_b1n1n1p0p0p0p0.png)|density F 4|
|`f210`|![stencil](/images/st_b1p0n1p0p1p0p0.png)|density F 5|
|`f020`|![stencil](/images/st_b1p0p0p0p0p1p0.png)|density F 6|
|`f120`|![stencil](/images/st_b1n1p0p0p0p1p0.png)|density F 7|
|`f220`|![stencil](/images/st_b1p0p0p0p1p1p0.png)|density F 8|
|`f001`|![stencil](/images/st_b1p0p0n1p0p0p0.png)|density F 9|
|`f101`|![stencil](/images/st_b1n1p0n1p0p0p0.png)|density F 10|
|`f201`|![stencil](/images/st_b1p0p0n1p1p0p0.png)|density F 11|
|`f011`|![stencil](/images/st_b1p0n1n1p0p0p0.png)|density F 12|
|`f111`|![stencil](/images/st_b1n1n1n1p0p0p0.png)|density F 13|
|`f211`|![stencil](/images/st_b1p0n1n1p1p0p0.png)|density F 14|
|`f021`|![stencil](/images/st_b1p0p0n1p0p1p0.png)|density F 15|
|`f121`|![stencil](/images/st_b1n1p0n1p0p1p0.png)|density F 16|
|`f221`|![stencil](/images/st_b1p0p0n1p1p1p0.png)|density F 17|
|`f002`|![stencil](/images/st_b1p0p0p0p0p0p1.png)|density F 18|
|`f102`|![stencil](/images/st_b1n1p0p0p0p0p1.png)|density F 19|
|`f202`|![stencil](/images/st_b1p0p0p0p1p0p1.png)|density F 20|
|`f012`|![stencil](/images/st_b1p0n1p0p0p0p1.png)|density F 21|
|`f112`|![stencil](/images/st_b1n1n1p0p0p0p1.png)|density F 22|
|`f212`|![stencil](/images/st_b1p0n1p0p1p0p1.png)|density F 23|
|`f022`|![stencil](/images/st_b1p0p0p0p0p1p1.png)|density F 24|
|`f122`|![stencil](/images/st_b1n1p0p0p0p1p1.png)|density F 25|
|`f222`|![stencil](/images/st_b1p0p0p0p1p1p1.png)|density F 26|
|`avgP`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgP|
|`varUX`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUX|
|`varUY`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUY|
|`varUZ`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUZ|
|`varUXUY`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUXUY|
|`varUXUZ`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUXUZ|
|`varUYUZ`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUYUZ|
|`avgdxu2`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgdxu2|
|`avgdyv2`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgdyv2|
|`avgdzw2`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgdzw2|
|`avgUX`|![stencil](/images/st_b1n1p0p0p1p0p0.png)|avgUX|
|`avgUY`|![stencil](/images/st_b1p0n1p0p0p1p0.png)|avgUY|
|`avgUZ`|![stencil](/images/st_b1p0p0n1p0p0p1.png)|avgUZ|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f000`|f000|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f100`|f100|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 1|
|`f200`|f200|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 2|
|`f010`|f010|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 3|
|`f110`|f110|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 4|
|`f210`|f210|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 5|
|`f020`|f020|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 6|
|`f120`|f120|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 7|
|`f220`|f220|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 8|
|`f001`|f001|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 9|
|`f101`|f101|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 10|
|`f201`|f201|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 11|
|`f011`|f011|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 12|
|`f111`|f111|![stencil](/images/st_b1p1p1p1p1p1p1.png)|density F 13|
|`f211`|f211|![stencil](/images/st_b1n1p1p1n1p1p1.png)|density F 14|
|`f021`|f021|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 15|
|`f121`|f121|![stencil](/images/st_b1p1n1p1p1n1p1.png)|density F 16|
|`f221`|f221|![stencil](/images/st_b1n1n1p1n1n1p1.png)|density F 17|
|`f002`|f002|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 18|
|`f102`|f102|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 19|
|`f202`|f202|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 20|
|`f012`|f012|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 21|
|`f112`|f112|![stencil](/images/st_b1p1p1n1p1p1n1.png)|density F 22|
|`f212`|f212|![stencil](/images/st_b1n1p1n1n1p1n1.png)|density F 23|
|`f022`|f022|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 24|
|`f122`|f122|![stencil](/images/st_b1p1n1n1p1n1n1.png)|density F 25|
|`f222`|f222|![stencil](/images/st_b1n1n1n1n1n1n1.png)|density F 26|
|`avgP`|avgP|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgP|
|`varUX`|varUX|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUX|
|`varUY`|varUY|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUY|
|`varUZ`|varUZ|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUZ|
|`varUXUY`|varUXUY|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUXUY|
|`varUXUZ`|varUXUZ|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUXUZ|
|`varUYUZ`|varUYUZ|![stencil](/images/st_b1p0p0p0p0p0p0.png)|varUYUZ|
|`avgdxu2`|avgdxu2|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgdxu2|
|`avgdyv2`|avgdyv2|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgdyv2|
|`avgdzw2`|avgdzw2|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgdzw2|
|`avgUX`|avgUX|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgUX|
|`avgUY`|avgUY|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgUY|
|`avgUZ`|avgUZ|![stencil](/images/st_b1p0p0p0p0p0p0.png)|avgUZ|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, avgP, varUX, varUY, varUZ, varUXUY, varUXUZ, varUYUZ, avgdxu2, avgdyv2, avgdzw2, avgUX, avgUY, avgUZ|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, avgP, varUX, varUY, varUZ, varUXUY, varUXUZ, varUYUZ, avgdxu2, avgdyv2, avgdzw2, avgUX, avgUY, avgUZ|
|BaseInit|Init|_none_|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, avgP, varUX, varUY, varUZ, varUXUY, varUXUZ, varUYUZ, avgdxu2, avgdyv2, avgdzw2, avgUX, avgUY, avgUZ|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

