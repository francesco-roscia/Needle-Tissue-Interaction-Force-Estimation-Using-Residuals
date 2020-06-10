# Needle-Tissue Interaction Force Estimation Using Residuals
## Medical Robotics Couse Project
Gianmarco Roggiolani, Francesco Roscia & Matteo Sodano (2020)

Supervisor: Prof. Marilena VENDITTELLI


The aim of the project is a sensorless estimation of the exerted force between a needle attached to the end effector of the KUKA LWR-IV + manipulator and a tissue during a puncturing event, together with the mechanical parameters (elasticity and viscosity) of the tissue, having the joint torques and configurations histories. 


Implementation: the algorithm has been implemented in Matlab. Measured joint torques and configurations have to be provided in a .dat file, and opened in data.m. A fine tuning of the initial covariance matrix for the RLS method is required (modify Psi0 in layerDetection.m).


<p align="center">
	<img width="80%" height="80%" alt="portfolio_view" src="https://user-images.githubusercontent.com/62264717/83292181-f2bac600-a1e9-11ea-80f6-b56af0c4b36a.png">
</p>


