**False Position**

This algorithm is a root finding method for a function that takes two initial guesses for the root and creates a straight line between them. It then takes the point on the line where it crosses the y-axis to be one of the new guesses for finding the root of a given function. Each iteration either the lower or the upper guess is changed.

*Inputs*
- a function
- a lower guess
- an upper guess
- a relative error
- max number of iterations
- any other parameters used by the function

*Outputs*
- the estimated root location
- the fuction evaluated at the root location
- the approximate relative error
- how many iterations were performed
