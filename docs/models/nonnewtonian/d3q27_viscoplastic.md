

## Description
d3q27_viscoplastic

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q27_viscoplastic/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q27_viscoplastic/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`Velocity`|Inlet velocity|
|`Pressure`|Inlet/Outlet pressure|
|`FluxInObj`|Weight of [Volume flux] in objective|
|`TotalRhoInObj`|Weight of [Total mass] in objective|
|`XYvxInObj`|Weight of [Volume flux] in objective|
|`XYvyInObj`|Weight of [Volume flux] in objective|
|`XYvzInObj`|Weight of [Volume flux] in objective|
|`XYrho1InObj`|Weight of [Volume flux] in objective|
|`XYrho2InObj`|Weight of [Volume flux] in objective|
|`XYareaInObj`|Weight of [Volume flux] in objective|
|`XZvxInObj`|Weight of [Volume flux] in objective|
|`XZvyInObj`|Weight of [Volume flux] in objective|
|`XZvzInObj`|Weight of [Volume flux] in objective|
|`XZrho1InObj`|Weight of [Volume flux] in objective|
|`XZrho2InObj`|Weight of [Volume flux] in objective|
|`XZareaInObj`|Weight of [Volume flux] in objective|
|`YZvxInObj`|Weight of [Volume flux] in objective|
|`YZvyInObj`|Weight of [Volume flux] in objective|
|`YZvzInObj`|Weight of [Volume flux] in objective|
|`YZrho1InObj`|Weight of [Volume flux] in objective|
|`YZrho2InObj`|Weight of [Volume flux] in objective|
|`YZareaInObj`|Weight of [Volume flux] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`nu`||Viscosity|
|`ForceX`||Force force X|
|`ForceY`||Force force Y|
|`ForceZ`||Force force Z|
|`YieldStress`||Yield stress|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`P`|`Pa`|P|
|`U`|`m/s`|U|
|`nu_app`|`m2/s`|nu_app|
|`yield_stat`|`1`|yield_stat|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Flux`|`m3/s`|Volume flux|
|`TotalRho`|`kg`|Total mass|
|`XYvx`|`m3/s`|Volume flux|
|`XYvy`|`m3/s`|Volume flux|
|`XYvz`|`m3/s`|Volume flux|
|`XYrho1`|`kg/m`|Volume flux|
|`XYrho2`|`kg/m`|Volume flux|
|`XYarea`|`m2`|Volume flux|
|`XZvx`|`m3/s`|Volume flux|
|`XZvy`|`m3/s`|Volume flux|
|`XZvz`|`m3/s`|Volume flux|
|`XZrho1`|`kg/m`|Volume flux|
|`XZrho2`|`kg/m`|Volume flux|
|`XZarea`|`m2`|Volume flux|
|`YZvx`|`m3/s`|Volume flux|
|`YZvy`|`m3/s`|Volume flux|
|`YZvz`|`m3/s`|Volume flux|
|`YZrho1`|`kg/m`|Volume flux|
|`YZrho2`|`kg/m`|Volume flux|
|`YZarea`|`m2`|Volume flux|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|XYslice1, XZslice1, YZslice1, XYslice2, XZslice2, YZslice2|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, SymmetryY, SymmetryZ, NVelocity_ZouHe, SVelocity_ZouHe, EVelocity_ZouHe, WVelocity_ZouHe, NPressure_ZouHe, SPressure_ZouHe, EPressure_ZouHe, WPressure_ZouHe|
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
|`nu_app`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nu_app|
|`yield_stat`|![stencil](/images/st_b1p0p0p0p0p0p0.png)|yield_stat|

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
|`nu_app`|nu_app|![stencil](/images/st_b1p0p0p0p0p0p0.png)|nu_app|
|`yield_stat`|yield_stat|![stencil](/images/st_b1p0p0p0p0p0p0.png)|yield_stat|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, nu_app, yield_stat|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, nu_app, yield_stat|
|BaseInit|Init|_none_|f000, f100, f200, f010, f110, f210, f020, f120, f220, f001, f101, f201, f011, f111, f211, f021, f121, f221, f002, f102, f202, f012, f112, f212, f022, f122, f222, nu_app, yield_stat|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration|
|Init|BaseInit|

