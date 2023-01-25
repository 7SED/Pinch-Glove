PROJECT: VIRTUAL REALITY/2D Kinematics
YEAR: 2019 AUTHOR: SH.SEDGHI

This MATLAB code simulates 2D kinematics of a robotic arm with two segments. The user is prompted to enter the angles of the first and second arm, which range from 0 to 270 degrees. The code uses the input angles to calculate the horizontal and vertical location of the end effector using inverse kinematics equations.

The code first converts the input angles to corresponding values on a logarithmic scale using the logspace function. These values are then used to calculate the horizontal and vertical location of the end effector using trigonometric functions and inverse kinematic equations. The final x and y coordinates are then displayed to the user.

Please note that the code assumes that the length of the first segment is 10 units and the length of the second segment is 6 units. If you want to use different lengths, you will need to change the values of the "seg1" and "seg2" variables accordingly.
