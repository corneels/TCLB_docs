

## Description
d2q9_lee

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/d2q9_lee/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 8afe856)/src/d2q9_lee/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`InletVelocity`|inlet velocity|
|`InletPressure`|inlet pressure|
|`InletDensity`|inlet density|
|`OutletDensity`|inlet density|
|`InitDensity`|inlet density|
|`WallDensity`|vapor/liquid density of wall|
|`MovingWallVelocity`|Velocity of the MovingWall|
|`WetDensity`|wet density|
|`DryDensity`|dry density|
|`Wetting`|wetting factor|
|`MomentumXInObj`|Weight of [momentum] in objective|
|`MomentumYInObj`|Weight of [momentum] in objective|
|`MassInObj`|Weight of [mass] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`omega`|1.0/(3*nu + 0.5)|one over relaxation time|
|`nu`||viscosity|
|`GravitationY`||Gravitation in the direction of y|
|`GravitationX`||Gravitation in the direction of x|
|`LiquidDensity`||Density of liquid phase|
|`VaporDensity`||Density of vapor phase|
|`Beta`||Beta of Lee model|
|`Kappa`||Capilarity|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`U`|`m/s`|U|
|`Nu`|`kg/m3`|Nu|
|`P`|`Pa`|P|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`MomentumX`|`1`|momentum|
|`MomentumY`|`1`|momentum|
|`Mass`|`1`|mass|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Wet, Dry|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, MovingWall, ForcedMovingWall|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`f0`|![stencil](/images/st_a2p0p0p0p0p0p0.png)|f0|
|`f1`|![stencil](/images/st_a2n1p0p0n1p0p0.png)|f1|
|`f2`|![stencil](/images/st_a2p0n1p0p0n1p0.png)|f2|
|`f3`|![stencil](/images/st_a2p1p0p0p1p0p0.png)|f3|
|`f4`|![stencil](/images/st_a2p0p1p0p0p1p0.png)|f4|
|`f5`|![stencil](/images/st_a2n1n1p0n1n1p0.png)|f5|
|`f6`|![stencil](/images/st_a2p1n1p0p1n1p0.png)|f6|
|`f7`|![stencil](/images/st_a2p1p1p0p1p1p0.png)|f7|
|`f8`|![stencil](/images/st_a2n1p1p0n1p1p0.png)|f8|
|`rho`|![stencil](/images/st_a2n2n2p0p2p2p0.png)|rho|
|`nu`|![stencil](/images/st_a2n2n2p0p2p2p0.png)|nu|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`f0`|f0|![stencil](/images/st_a2p0p0p0p0p0p0.png)|f0|
|`f1`|f1|![stencil](/images/st_a2p1p0p0p1p0p0.png)|f1|
|`f2`|f2|![stencil](/images/st_a2p0p1p0p0p1p0.png)|f2|
|`f3`|f3|![stencil](/images/st_a2n1p0p0n1p0p0.png)|f3|
|`f4`|f4|![stencil](/images/st_a2p0n1p0p0n1p0.png)|f4|
|`f5`|f5|![stencil](/images/st_a2p1p1p0p1p1p0.png)|f5|
|`f6`|f6|![stencil](/images/st_a2n1p1p0n1p1p0.png)|f6|
|`f7`|f7|![stencil](/images/st_a2n1n1p0n1n1p0.png)|f7|
|`f8`|f8|![stencil](/images/st_a2p1n1p0p1n1p0.png)|f8|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|BaseIteration|Run|f0, f1, f2, f3, f4, f5, f6, f7, f8|f0, f1, f2, f3, f4, f5, f6, f7, f8|
|CalcRho|CalcRho|f0, f1, f2, f3, f4, f5, f6, f7, f8|rho|
|CalcNu|CalcNu|_none_|nu|
|InitRho|InitRho|_none_|rho|
|InitF|InitF|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8|
|InitF2|InitF2|_none_|f0, f1, f2, f3, f4, f5, f6, f7, f8|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIteration, CalcRho, CalcNu|
|Init|InitF2, CalcRho, CalcNu|

