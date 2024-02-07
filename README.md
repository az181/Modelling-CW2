## Constance
|Parameter | Meaning | Value|
|:--------:|:-------:|:----:|
|m | Mass of tennis ball | (40 + 7 ) × 10<sup>−3</sup> kg|
|\|g\| | Gravitational acceleration | 9.81 ms<sup>−2</sup>|
|C<sub>D</sub> | Drag coefficient | 0.5|
|ρ | Density of air | 1.2 kg m<sup>−3</sup>|
|A | Cross sectional area of ball | (40 − 7 ) × 10<sup>−4</sup> m<sup>2</sup>|
|H<sub>ball</sub> | Initial height of ball | 0.8 m|
|L | Distance from baseline to net | 11.9 m|
|H<sub>net</sub> | Net height | 0.9 m|

## The Code
### Q1
- [Q1](./Q1.m) : a function (that takes in velocity and the initial angle) that plots the trajectory of the ball with no drag, as the forwardEuler and analytical solutions
- [forwardEuler](./forwardEuler.m)  : the forward euler metherd 
- [trajectory_eq](./trajectory_eq.m) : this is the analytical soluton for the trajectory
- [dxdt](./dxdt.m) : ODE
- [dydt](./dydt.m) : ODE
### Q2
- [trajctory_drag](./trajctory_drag.m) : the script that plots the trajctory for drag
- [dxdt_drag](./dxdt_drag.m) : ODE
- [dydt_drag](./dydt_drag.m) : ODE
### Q3
#TODO
### Q4
- [Q4](./Q4.m) : the script that plots the trajctory for drag and the magnus effect 
- [forwardEuler_mag](./forwardEuler_mag.m) : forward with omega as an input
- [dxdt_mag](./dxdt_mag.m) : ODE
- [dydt_mag](./dydt_mag.m) : ODE

