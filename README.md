# Needle-Tissue Interaction Force Estimation Using Residuals
## Medical Robotics Couse Project
Gianmarco Roggiolani, Francesco Roscia & Matteo Sodano (2020)

Supervisor: Prof. Marilena VENDITTELLI


The aim of the project is a sensorless estimation of the exerted force between a needle attached to the end effector of the KUKA LWR-IV + manipulator and a tissue during a puncturing event, together with the mechanical parameters (elasticity and viscosity) of the tissue, having the joint torques and configurations histories. 


Implementation: the algorithm has been implemented in Matlab. Measured joint torques and configurations have to be provided in a .dat file, and opened in data.m. A fine tuning of the initial covariance matrix for the RLS method is required (modify Psi0 in layerDetection.m).


<p align="center">
	<img width="80%" height="80%" alt="portfolio_view" src="https://user-images.githubusercontent.com/62264717/83292181-f2bac600-a1e9-11ea-80f6-b56af0c4b36a.png">
</p>


### References
[1] Siciliano, B., Sciavicco, L., Villani, L., & Oriolo, G. (2010). "Robotics: modelling, planning and control". Springer Science & Business Media.

[2] Evangelista, D., Iodice, F., Perica, A., Cefalo, M., Magrini, E., Anzidei, M., Vendittelli, M. (2016) "Residual-based interaction force estimation for haptic feedback in teleoperated needle insertion". 6th Joint Workshop on New Technologies for Computer/Robot Assisted Surgery (CRAS 2016).

[3] Mattone, R., & De Luca, A. (2003). "Fault detection and isolation in robot manipulators". IFATIS, IRAR002R01.

[4] De Luca, A., & Mattone, R. (2005). "Sensorless robot collision detection and hybrid force/motion control". In Proceedings of the 2005 IEEE international conference on robotics and automation (pp. 999-1004). IEEE.

[5] Cacciotti, N., Cifonelli, A., Gaz, C., Paduano, V., Russo, A. V., Vendittelli, M. (2018). "Enhancing force feedback in teleoperated needle insertion through on-line identification of the needle-tissue interaction parameters". IEEE RAS and EMBS International Conference on Biomedical Robotics and Biomechatronics (BIOROB).
