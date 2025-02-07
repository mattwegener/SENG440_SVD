
#ifndef SVD_TYPES_H
#define SVD_TYPES_H

#define EPS     (0.0001f)       //< floating point comparison epsilon
#define N       (4)             //< Matrix size NxN

typedef float matrix_elem; //< we can change this later to use fixed point
typedef matrix_elem matrix[N][N]; //< this could actually just be a pointer to matrix_elem type

#endif