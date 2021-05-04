**LU Factorization**
This algorithm takes a matrix and pulls it apart to create new matrices from it that tell you information about the system of equations you are presented with. This algorithm preforms linear algebra for you so you don't have to. It takes a matrix and factors it into an upper triangular matrix and a lower triangular matrix. It then uses both of these matrices with different substitution techniques to solve the system of equations for the coefficients in the A matrix that you inputted. This algorithm also pivots the coefficient matrix if needed so it can perform the decomposition.

*Inputs*
- a coefficient matrix, A

*Outputs*
- lower triangular matrix (with 1's along the diagonals)
- the upper triangular matrix
- the pivot matrix

