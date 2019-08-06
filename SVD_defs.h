
#ifndef SVD_TYPES_H
#define SVD_TYPES_H

#define EPS     (0.0000001f)       //< floating point comparison epsilon
#define N       (4)             //< Matrix size NxN

typedef float matrix_elem; //< we can change this later to use fixed point
typedef matrix_elem matrix[N][N]; //< this could actually just be a pointer to matrix_elem type

typedef enum bool {true = 1, false = 0,} bool;

#endif