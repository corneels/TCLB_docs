

## Description
The 'd3q27_pf_velocity' model is a multiphase 3D lattice Boltzmann model for the simulation of immiscible fluids (at both high and low density ratios).  The base implementation uses a velocity based LBM for capturing the hydrodynamics of the flow and solves the conservative phase field equation for the interfacial dynamics. To enhance stability, a Weighted-Multiple-Relaxation-Time collision operator is used.  The model currently has 3 options at compile time:  	- OutFlow; this enables convective and neumann outflow conditions. It requires extra memory access and is thus added as a compile option (faster code without). 	- BGK; this is in existence for the sole reason of initial testing, however if you would like to use a BGK collision operator - this flag is necessary. 	- autosym; both of these options can be compiled with symmetry conditions. 

## Details
[Model description files](Model description) files for this model:
[Dynamics.c](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q27_pf_velocity_OutFlow_autosym/Dynamics.c.Rt)
[Dynamics.R](https://github.com/llaniewski/TCLB/blob/(HEAD detached at 21557e6)/src/d3q27_pf_velocity_OutFlow_autosym/Dynamics.R)

### [Zonal Settings](Settings)

| Name | Comment |
| --- | --- |
|`PhaseField`|Initial PhaseField distribution|
|`VelocityX`|inlet/outlet/init velocity|
|`VelocityY`|inlet/outlet/init velocity|
|`VelocityZ`|inlet/outlet/init velocity|
|`Pressure`|inlet/outlet/init density|
|`InterfacePositionInObj`|Weight of [trackPosition] in objective|
|`VfrontInObj`|Weight of [velocity infront of bubble] in objective|
|`VbackInObj`|Weight of [velocity behind bubble] in objective|
|`RTISpikeInObj`|Weight of [SpikeTracker ] in objective|
|`RTIBubbleInObj`|Weight of [BubbleTracker] in objective|
|`RTISaddleInObj`|Weight of [SaddleTracker] in objective|
|`PressureLossInObj`|Weight of [pressure loss] in objective|
|`OutletFluxInObj`|Weight of [pressure loss] in objective|
|`InletFluxInObj`|Weight of [pressure loss] in objective|
|`TotalDensityInObj`|Weight of [Mass conservation check] in objective|
|`KineticEnergyInObj`|Weight of [Measure of kinetic energy] in objective|
|`GasTotalVelocityInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasTotalVelocityXInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasTotalVelocityYInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasTotalVelocityZInObj`|Weight of [use to determine avg velocity of bubbles] in objective|
|`GasCellsInObj`|Weight of [use in line with GasTotalVelocity to determine average velocity] in objective|


### [Global Settings](Settings)

| Name | Derived | Comment |
| --- | --- | --- |
|`Density_h`||High density|
|`Density_l`||Low  density|
|`PhaseField_h`||PhaseField in Liquid|
|`PhaseField_l`||PhaseField gas|
|`IntWidth`||Anti-diffusivity coeff|
|`omega_phi`|1.0/(3*M+0.5)|one over relaxation time (phase field)|
|`M`||Mobility|
|`sigma`||surface tension|
|`ContactAngle`||Contact angle in degrees|
|`radAngle`|ContactAngle*3.1415926535897/180|Conversion to rads for calcs|
|`RTI_Characteristic_Length`||Use for RTI instability|
|`Radius`||Diffuse Sphere Radius|
|`CenterX`||Diffuse sphere center_x|
|`CenterY`||Diffuse sphere center_y|
|`CenterZ`||Diffuse sphere center_z|
|`BubbleType`||droplet(1.0) or bubble(-1.0)?!|
|`DonutTime`||Radius of a Torus - initialised to travel along x-axis|
|`Donut_h`||Half donut thickness, i.e. the radius of the cross-section|
|`Donut_D`||Dilation factor along the x-axis|
|`Donut_x0`||Position along x-axis|
|`tau_l`|(3*Viscosity_l)|relaxation time (low density fluid)|
|`tau_h`|(3*Viscosity_h)|relaxation time (high density fluid)|
|`Viscosity_l`||kinematic viscosity|
|`Viscosity_h`||kinematic viscosity|
|`GravitationX`||applied (rho)*GravitationX|
|`GravitationY`||applied (rho)*GravitationY|
|`GravitationZ`||applied (rho)*GravitationZ|
|`BuoyancyX`||applied (rho_h-rho)*BuoyancyX|
|`BuoyancyY`||applied (rho_h-rho)*BuoyancyY|
|`BuoyancyZ`||applied (rho_h-rho)*BuoyancyZ|
|`xyzTrack`||x<-1, y<-2, z<-3|
|`Threshold`||Parameters threshold|

### [Exported Quantities](Quantities) (VTK, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`Rho`|`kg/m3`|Rho|
|`PhaseField`|`1`|PhaseField|
|`U`|`m/s`|U|
|`P`|`Pa`|P|
|`Normal`|`1`|Normal|

#### [Exported Global Integrals](Globals) (CSV, etc)

| Name | [Unit](Units) | Comment |
| --- | --- | --- |
|`InterfacePosition`|`1`|trackPosition|
|`Vfront`|`1`|velocity infront of bubble|
|`Vback`|`1`|velocity behind bubble|
|`RTISpike`|`1`|SpikeTracker |
|`RTIBubble`|`1`|BubbleTracker|
|`RTISaddle`|`1`|SaddleTracker|
|`PressureLoss`|`1mPa`|pressure loss|
|`OutletFlux`|`1m2/s`|pressure loss|
|`InletFlux`|`1m2/s`|pressure loss|
|`TotalDensity`|`1kg/m3`|Mass conservation check|
|`KineticEnergy`|`J`|Measure of kinetic energy|
|`GasTotalVelocity`|`m/s`|use to determine avg velocity of bubbles|
|`GasTotalVelocityX`|`m/s`|use to determine avg velocity of bubbles|
|`GasTotalVelocityY`|`m/s`|use to determine avg velocity of bubbles|
|`GasTotalVelocityZ`|`m/s`|use to determine avg velocity of bubbles|
|`GasCells`|`1`|use in line with GasTotalVelocity to determine average velocity|
|`Objective`|`1`|Objective function|

### [Node Types](Node-Types)

| Group | Types |
| --- | --- |
|ADDITIONALS|Centerline, Smoothing, Spiketrack, Saddletrack, Bubbletrack|
|BOUNDARY|Wall, Solid, WVelocity, WPressure, WPressureL, EPressure, EVelocity, MovingWall_N, MovingWall_S, NVelocity, ENeumann, EConvect|
|COLLISION|BGK, MRT|
|DESIGNSPACE|DesignSpace|
|NONE|None|
|SETTINGZONE|DefaultZone|
|SYMX|SymmetryX_plus, SymmetryX_minus|
|SYMY|SymmetryY_plus, SymmetryY_minus|
|SYMZ|SymmetryZ_plus, SymmetryZ_minus|

### [Solved fields](Fields)

| Name | Access pattern | Comment |
| --- | --- | --- |
|`g0`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|g0|
|`g1`|![stencil](/images/st_b2n2p0p0n1p0p0.png)|g1|
|`g2`|![stencil](/images/st_b2p0p0p0p1p0p0.png)|g2|
|`g3`|![stencil](/images/st_b2n1n1p0p0n1p0.png)|g3|
|`g4`|![stencil](/images/st_b2n1p1p0p0p1p0.png)|g4|
|`g5`|![stencil](/images/st_b2n1p0n1p0p0n1.png)|g5|
|`g6`|![stencil](/images/st_b2n1p0p1p0p0p1.png)|g6|
|`g7`|![stencil](/images/st_b2n2n1n1n1n1n1.png)|g7|
|`g8`|![stencil](/images/st_b2p0n1n1p1n1n1.png)|g8|
|`g9`|![stencil](/images/st_b2n2p1n1n1p1n1.png)|g9|
|`g10`|![stencil](/images/st_b2p0p1n1p1p1n1.png)|g10|
|`g11`|![stencil](/images/st_b2n2n1p1n1n1p1.png)|g11|
|`g12`|![stencil](/images/st_b2p0n1p1p1n1p1.png)|g12|
|`g13`|![stencil](/images/st_b2n2p1p1n1p1p1.png)|g13|
|`g14`|![stencil](/images/st_b2p0p1p1p1p1p1.png)|g14|
|`g15`|![stencil](/images/st_b2n2n1p0n1n1p0.png)|g15|
|`g16`|![stencil](/images/st_b2p0n1p0p1n1p0.png)|g16|
|`g17`|![stencil](/images/st_b2n2p1p0n1p1p0.png)|g17|
|`g18`|![stencil](/images/st_b2p0p1p0p1p1p0.png)|g18|
|`g19`|![stencil](/images/st_b2n2p0n1n1p0n1.png)|g19|
|`g20`|![stencil](/images/st_b2p0p0n1p1p0n1.png)|g20|
|`g21`|![stencil](/images/st_b2n2p0p1n1p0p1.png)|g21|
|`g22`|![stencil](/images/st_b2p0p0p1p1p0p1.png)|g22|
|`g23`|![stencil](/images/st_b2n1n1n1p0n1n1.png)|g23|
|`g24`|![stencil](/images/st_b2n1p1n1p0p1n1.png)|g24|
|`g25`|![stencil](/images/st_b2n1n1p1p0n1p1.png)|g25|
|`g26`|![stencil](/images/st_b2n1p1p1p0p1p1.png)|g26|
|`h0`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|h0|
|`h1`|![stencil](/images/st_b2n2p0p0n1p0p0.png)|h1|
|`h2`|![stencil](/images/st_b2p0p0p0p1p0p0.png)|h2|
|`h3`|![stencil](/images/st_b2n1n1p0p0n1p0.png)|h3|
|`h4`|![stencil](/images/st_b2n1p1p0p0p1p0.png)|h4|
|`h5`|![stencil](/images/st_b2n1p0n1p0p0n1.png)|h5|
|`h6`|![stencil](/images/st_b2n1p0p1p0p0p1.png)|h6|
|`h7`|![stencil](/images/st_b2n2n1n1n1n1n1.png)|h7|
|`h8`|![stencil](/images/st_b2p0n1n1p1n1n1.png)|h8|
|`h9`|![stencil](/images/st_b2n2p1n1n1p1n1.png)|h9|
|`h10`|![stencil](/images/st_b2p0p1n1p1p1n1.png)|h10|
|`h11`|![stencil](/images/st_b2n2n1p1n1n1p1.png)|h11|
|`h12`|![stencil](/images/st_b2p0n1p1p1n1p1.png)|h12|
|`h13`|![stencil](/images/st_b2n2p1p1n1p1p1.png)|h13|
|`h14`|![stencil](/images/st_b2p0p1p1p1p1p1.png)|h14|
|`gold0`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold1`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold2`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold3`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold4`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold5`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold6`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold7`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold8`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold9`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold10`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold11`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold12`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold13`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold14`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold15`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold16`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold17`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold18`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold19`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold20`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold21`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold22`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold23`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold24`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold25`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`gold26`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|gold0|
|`hold0`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold1`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold2`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold3`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold4`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold5`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold6`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold7`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold8`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold9`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold10`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold11`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold12`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold13`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`hold14`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|hold0|
|`U`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|U|
|`V`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|V|
|`W`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|W|
|`nw_x`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|nw_x|
|`nw_y`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|nw_y|
|`nw_z`|![stencil](/images/st_b2n1p0p0p0p0p0.png)|nw_z|
|`PhaseF`|![stencil](/images/st_b2n1n1n1p1p1p1.png)|PhaseF|

### [Densities - default accessors](Densities)

| Name | [Field](Fields) | Pulling field from | Comment |
| --- | --- | --- | --- |
|`g0`|g0|![stencil](/images/st_b2p0p0p0p0p0p0.png)|g0|
|`g1`|g1|![stencil](/images/st_b2p1p0p0p1p0p0.png)|g1|
|`g2`|g2|![stencil](/images/st_b2n1p0p0n1p0p0.png)|g2|
|`g3`|g3|![stencil](/images/st_b2p0p1p0p0p1p0.png)|g3|
|`g4`|g4|![stencil](/images/st_b2p0n1p0p0n1p0.png)|g4|
|`g5`|g5|![stencil](/images/st_b2p0p0p1p0p0p1.png)|g5|
|`g6`|g6|![stencil](/images/st_b2p0p0n1p0p0n1.png)|g6|
|`g7`|g7|![stencil](/images/st_b2p1p1p1p1p1p1.png)|g7|
|`g8`|g8|![stencil](/images/st_b2n1p1p1n1p1p1.png)|g8|
|`g9`|g9|![stencil](/images/st_b2p1n1p1p1n1p1.png)|g9|
|`g10`|g10|![stencil](/images/st_b2n1n1p1n1n1p1.png)|g10|
|`g11`|g11|![stencil](/images/st_b2p1p1n1p1p1n1.png)|g11|
|`g12`|g12|![stencil](/images/st_b2n1p1n1n1p1n1.png)|g12|
|`g13`|g13|![stencil](/images/st_b2p1n1n1p1n1n1.png)|g13|
|`g14`|g14|![stencil](/images/st_b2n1n1n1n1n1n1.png)|g14|
|`g15`|g15|![stencil](/images/st_b2p1p1p0p1p1p0.png)|g15|
|`g16`|g16|![stencil](/images/st_b2n1p1p0n1p1p0.png)|g16|
|`g17`|g17|![stencil](/images/st_b2p1n1p0p1n1p0.png)|g17|
|`g18`|g18|![stencil](/images/st_b2n1n1p0n1n1p0.png)|g18|
|`g19`|g19|![stencil](/images/st_b2p1p0p1p1p0p1.png)|g19|
|`g20`|g20|![stencil](/images/st_b2n1p0p1n1p0p1.png)|g20|
|`g21`|g21|![stencil](/images/st_b2p1p0n1p1p0n1.png)|g21|
|`g22`|g22|![stencil](/images/st_b2n1p0n1n1p0n1.png)|g22|
|`g23`|g23|![stencil](/images/st_b2p0p1p1p0p1p1.png)|g23|
|`g24`|g24|![stencil](/images/st_b2p0n1p1p0n1p1.png)|g24|
|`g25`|g25|![stencil](/images/st_b2p0p1n1p0p1n1.png)|g25|
|`g26`|g26|![stencil](/images/st_b2p0n1n1p0n1n1.png)|g26|
|`h0`|h0|![stencil](/images/st_b2p0p0p0p0p0p0.png)|h0|
|`h1`|h1|![stencil](/images/st_b2p1p0p0p1p0p0.png)|h1|
|`h2`|h2|![stencil](/images/st_b2n1p0p0n1p0p0.png)|h2|
|`h3`|h3|![stencil](/images/st_b2p0p1p0p0p1p0.png)|h3|
|`h4`|h4|![stencil](/images/st_b2p0n1p0p0n1p0.png)|h4|
|`h5`|h5|![stencil](/images/st_b2p0p0p1p0p0p1.png)|h5|
|`h6`|h6|![stencil](/images/st_b2p0p0n1p0p0n1.png)|h6|
|`h7`|h7|![stencil](/images/st_b2p1p1p1p1p1p1.png)|h7|
|`h8`|h8|![stencil](/images/st_b2n1p1p1n1p1p1.png)|h8|
|`h9`|h9|![stencil](/images/st_b2p1n1p1p1n1p1.png)|h9|
|`h10`|h10|![stencil](/images/st_b2n1n1p1n1n1p1.png)|h10|
|`h11`|h11|![stencil](/images/st_b2p1p1n1p1p1n1.png)|h11|
|`h12`|h12|![stencil](/images/st_b2n1p1n1n1p1n1.png)|h12|
|`h13`|h13|![stencil](/images/st_b2p1n1n1p1n1n1.png)|h13|
|`h14`|h14|![stencil](/images/st_b2n1n1n1n1n1n1.png)|h14|
|`gold0`|gold0|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold1`|gold1|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold2`|gold2|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold3`|gold3|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold4`|gold4|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold5`|gold5|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold6`|gold6|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold7`|gold7|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold8`|gold8|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold9`|gold9|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold10`|gold10|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold11`|gold11|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold12`|gold12|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold13`|gold13|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold14`|gold14|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold15`|gold15|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold16`|gold16|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold17`|gold17|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold18`|gold18|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold19`|gold19|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold20`|gold20|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold21`|gold21|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold22`|gold22|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold23`|gold23|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold24`|gold24|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold25`|gold25|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`gold26`|gold26|![stencil](/images/st_b2p0p0p0p0p0p0.png)|gold0|
|`hold0`|hold0|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold1`|hold1|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold2`|hold2|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold3`|hold3|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold4`|hold4|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold5`|hold5|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold6`|hold6|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold7`|hold7|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold8`|hold8|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold9`|hold9|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold10`|hold10|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold11`|hold11|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold12`|hold12|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold13`|hold13|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`hold14`|hold14|![stencil](/images/st_b2p0p0p0p0p0p0.png)|hold0|
|`U`|U|![stencil](/images/st_b2p0p0p0p0p0p0.png)|U|
|`V`|V|![stencil](/images/st_b2p0p0p0p0p0p0.png)|V|
|`W`|W|![stencil](/images/st_b2p0p0p0p0p0p0.png)|W|
|`nw_x`|nw_x|![stencil](/images/st_b2p0p0p0p0p0p0.png)|nw_x|
|`nw_y`|nw_y|![stencil](/images/st_b2p0p0p0p0p0p0.png)|nw_y|
|`nw_z`|nw_z|![stencil](/images/st_b2p0p0p0p0p0p0.png)|nw_z|

### [Action stages](Stages)

| Name | Main procedure | Preloaded densities | Pushed fields |
| --- | --- | --- | --- |
|PhaseInit|Init|_none_|PhaseF|
|WallInit|Init_wallNorm|_none_|nw_x, nw_y, nw_z|
|calcWall|calcWallPhase|nw_x, nw_y, nw_z|PhaseF|
|BaseInit|Init_distributions|_none_|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, gold0, gold1, gold2, gold3, gold4, gold5, gold6, gold7, gold8, gold9, gold10, gold11, gold12, gold13, gold14, gold15, gold16, gold17, gold18, gold19, gold20, gold21, gold22, gold23, gold24, gold25, gold26, hold0, hold1, hold2, hold3, hold4, hold5, hold6, hold7, hold8, hold9, hold10, hold11, hold12, hold13, hold14, U, V, W, PhaseF|
|calcPhase|calcPhaseF|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, gold0, gold1, gold2, gold3, gold4, gold5, gold6, gold7, gold8, gold9, gold10, gold11, gold12, gold13, gold14, gold15, gold16, gold17, gold18, gold19, gold20, gold21, gold22, gold23, gold24, gold25, gold26, hold0, hold1, hold2, hold3, hold4, hold5, hold6, hold7, hold8, hold9, hold10, hold11, hold12, hold13, hold14, U, V, W, nw_x, nw_y, nw_z|PhaseF|
|BaseIter|Run|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, gold0, gold1, gold2, gold3, gold4, gold5, gold6, gold7, gold8, gold9, gold10, gold11, gold12, gold13, gold14, gold15, gold16, gold17, gold18, gold19, gold20, gold21, gold22, gold23, gold24, gold25, gold26, hold0, hold1, hold2, hold3, hold4, hold5, hold6, hold7, hold8, hold9, hold10, hold11, hold12, hold13, hold14, U, V, W, nw_x, nw_y, nw_z|g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, gold0, gold1, gold2, gold3, gold4, gold5, gold6, gold7, gold8, gold9, gold10, gold11, gold12, gold13, gold14, gold15, gold16, gold17, gold18, gold19, gold20, gold21, gold22, gold23, gold24, gold25, gold26, hold0, hold1, hold2, hold3, hold4, hold5, hold6, hold7, hold8, hold9, hold10, hold11, hold12, hold13, hold14, U, V, W, nw_x, nw_y, nw_z|


### [Actions](Stages)

| Name | Stages |
| --- | --- |
|Iteration|BaseIter, calcPhase, calcWall|
|Init|PhaseInit, WallInit, calcWall, BaseInit|

