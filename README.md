# Needle-Tissue Interaction Force Estimation Using Residuals
## Medical Robotics Couse Project
Roggiolani, G., Roscia, F., & Sodano, M. (2020)

Supervisor: Prof. Marilena VENDITTELLI


The aim of the project is a sensorless extimation of the exerted force between a needle attached to the end effector of the KUKA LWR-IV + manipulator and a tissue during a puncturing event, together with the mechanical parameters of the tissue, having the joint torques and configurations histories. 

![Alt Text](https://user-images.githubusercontent.com/62264717/83289773-ce5cea80-a1e5-11ea-94a7-902052171e7c.png)
In the scheme

```math
SE = \frac{\sigma}{\sqrt{n}}
```

Implementation: the algorithm has been implemented in Matlab. Measured joint torques and configurations have to be provided in a .dat file, and opened in data.m. A fine tuning of the initial covariance matrix for the RLS method is required (modify Psi0 in layerDetection.m).
