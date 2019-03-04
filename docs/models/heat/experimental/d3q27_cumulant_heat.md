

## Description
d3q27_cumulant_heat

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d3q27_cumulant_heat/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 9bd743f)/src/d3q27_cumulant_heat/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|Inlet velocity|
|`Pressure`|Inlet pressure|
|`Turbulence`|Turbulence intensity|
|`Temperature`|Temperature|
|`Alpha`|Alpha|
|`HeatFluxInObj`|Weight of [Heat flux] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu`||Viscosity|
|`nubuffer`||Viscosity in the buffer layer|
|`Buoyancy`||Buoyancy|
|`BuoyancyT0`||BuoyancyT0|
|`GalileanCorrection`||Galilean correction term|
|`ForceX`||Force force X|
|`ForceY`||Force force Y|
|`ForceZ`||Force force Z|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`P`|`Pa`|P|
|`U`|`m/s`|U|
|`T`|`K`|T|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`HeatFlux`|`Km3/s`|Heat flux|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Heater, SamplingPlane|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, WVelocityTurbulent, NSymmetry, SSymmetry, ISymmetry, OSymmetry, NVelocity, SVelocity, NPressure, SPressure|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f000`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|density F 0|
|`f100`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|density F 1|
|`f200`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|density F 2|
|`f010`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|density F 3|
|`f110`|![stencil](/images/st_b1n1n1p0n1n1p0.png)|density F 4|
|`f210`|![stencil](/images/st_b1p1n1p0p1n1p0.png)|density F 5|
|`f020`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|density F 6|
|`f120`|![stencil](/images/st_b1n1p1p0n1p1p0.png)|density F 7|
|`f220`|![stencil](/images/st_b1p1p1p0p1p1p0.png)|density F 8|
|`f001`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|density F 9|
|`f101`|![stencil](/images/st_b1n1p0n1n1p0n1.png)|density F 10|
|`f201`|![stencil](/images/st_b1p1p0n1p1p0n1.png)|density F 11|
|`f011`|![stencil](/images/st_b1p0n1n1p0n1n1.png)|density F 12|
|`f111`|![stencil](/images/st_b1n1n1n1n1n1n1.png)|density F 13|
|`f211`|![stencil](/images/st_b1p1n1n1p1n1n1.png)|density F 14|
|`f021`|![stencil](/images/st_b1p0p1n1p0p1n1.png)|density F 15|
|`f121`|![stencil](/images/st_b1n1p1n1n1p1n1.png)|density F 16|
|`f221`|![stencil](/images/st_b1p1p1n1p1p1n1.png)|density F 17|
|`f002`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|density F 18|
|`f102`|![stencil](/images/st_b1n1p0p1n1p0p1.png)|density F 19|
|`f202`|![stencil](/images/st_b1p1p0p1p1p0p1.png)|density F 20|
|`f012`|![stencil](/images/st_b1p0n1p1p0n1p1.png)|density F 21|
|`f112`|![stencil](/images/st_b1n1n1p1n1n1p1.png)|density F 22|
|`f212`|![stencil](/images/st_b1p1n1p1p1n1p1.png)|density F 23|
|`f022`|![stencil](/images/st_b1p0p1p1p0p1p1.png)|density F 24|
|`f122`|![stencil](/images/st_b1n1p1p1n1p1p1.png)|density F 25|
|`f222`|![stencil](/images/st_b1p1p1p1p1p1p1.png)|density F 26|
|`g0`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|heat LB density G 0|
|`g1`|![stencil](/images/st_b1n1p0p0n1p0p0.png)|heat LB density G 1|
|`g2`|![stencil](/images/st_b1p1p0p0p1p0p0.png)|heat LB density G 2|
|`g3`|![stencil](/images/st_b1p0n1p0p0n1p0.png)|heat LB density G 3|
|`g4`|![stencil](/images/st_b1p0p1p0p0p1p0.png)|heat LB density G 4|
|`g5`|![stencil](/images/st_b1p0p0n1p0p0n1.png)|heat LB density G 5|
|`g6`|![stencil](/images/st_b1p0p0p1p0p0p1.png)|heat LB density G 6|
|`SynthTX`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SynthTX|
|`SynthTY`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SynthTY|
|`SynthTZ`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SynthTZ|

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
|`g0`|g0|![stencil](/images/st_b1p0p0p0p0p0p0.png)|heat LB density G 0|
|`g1`|g1|![stencil](/images/st_b1p1p0p0p1p0p0.png)|heat LB density G 1|
|`g2`|g2|![stencil](/images/st_b1n1p0p0n1p0p0.png)|heat LB density G 2|
|`g3`|g3|![stencil](/images/st_b1p0p1p0p0p1p0.png)|heat LB density G 3|
|`g4`|g4|![stencil](/images/st_b1p0n1p0p0n1p0.png)|heat LB density G 4|
|`g5`|g5|![stencil](/images/st_b1p0p0p1p0p0p1.png)|heat LB density G 5|
|`g6`|g6|![stencil](/images/st_b1p0p0n1p0p0n1.png)|heat LB density G 6|
|`SynthTX`|SynthTX|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SynthTX|
|`SynthTY`|SynthTY|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SynthTY|
|`SynthTZ`|SynthTZ|![stencil](/images/st_b1p0p0p0p0p0p0.png)|SynthTZ|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, g0, g1, g2, g3, g4, g5, g6, SynthTX, SynthTY, SynthTZ|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, g0, g1, g2, g3, g4, g5, g6, SynthTX, SynthTY, SynthTZ|
|BaseInit|Init|_none_|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, g0, g1, g2, g3, g4, g5, g6, SynthTX, SynthTY, SynthTZ|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

