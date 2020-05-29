# Needle-Tissue Interaction Force Estimation Using Residuals
## Medical Robotics Couse Project
Roggiolani, G., Roscia, F., & Sodano, M. (2020)

Supervisor: Prof. Marilena VENDITTELLI


The aim of the project is a sensorless extimation of the exerted force between a needle attached to the end effector of the KUKA LWR-IV + manipulator and a tissue during a puncturing event, together with the mechanical parameters of the tissue, having the joint torques and configurations histories. 

![Alt Text](https://user-images.githubusercontent.com/62264717/83292181-f2bac600-a1e9-11ea-80f6-b56af0c4b36a.png)
Schematic representation of the flow of data for detecting a puncturing event and the mechanical parameters of the tissue


Implementation: the algorithm has been implemented in Matlab. Measured joint torques and configurations have to be provided in a .dat file, and opened in data.m. A fine tuning of the initial covariance matrix for the RLS method is required (modify Psi0 in layerDetection.m).
