# Mech105-Algorithm
These are the algorithms I created with MATLAB for Mech105 for different numerical methods 

## Algorithms I created

**Binary Converter**

In this algorithm, I designed a code for MATLAB to turn any ordinary base 10 number into a base 2 number.

*Inputs*
-base 10 number

*Outputs*
-the same inputed number but in base two 

**False Position**

This algorithm is a root finding meathod for a function that takes two initial guesses for the root and creates a straight line between them. It then takes the point on the line where it crosses the y-axis to be one of the new guesses for finding the root of a given function. Each iteration either the lower or the upper guess is changed. 

*Inputs*
-a function 
-a lower guess 
-an upper guess 
-a relative error
-max number of iterations
-any other parameters used by the funciton

*Outputs*
-the estimated root location
-the fuction evaluated at the root location
-the approximate relative error
-how many iterations were performed


**LU Factorization**

This algorithm takes a matrix and pulls it apart to create new matrices from it that tell you information about the system of equations you are presented with. This algorithm preforms linear algebra for you so you don't have to. It takes a matrix and factors it into an upper triangular matrix and a lower triangular matrix. It then uses both of these matrices with different substitution techniques to solve the system of equations for the coefficients in the A matrix that you inputed. This algorithm also pivots the coefficient matrix if needed so it can perform the decomposition. 

*Inputs*
-a coefficient matrix, A

*Outputs*
-lower triangular matrix (with 1's along the diagonals)
-the upper triangular matrix 
-the pivot matrix


**Simpson 1/3 Rule**

This algorithm is a numberical meathod related to the Trapizoidal Rule that takes three or more points (must be odd) and creates a new curve off of those points that gives you informaiton about the integral of the original function. These points lye on the original function but they connect to form a new line that is easier to integrate than the original function. 

*Inputs*
- an x vector (equaly space independent variable) 
- a y vector (funciton values with respect to x)

*Outputs*
- the numerical integral of the given function over the given points

