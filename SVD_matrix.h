#include "SVD_math.h"

typedef struct {
  int n;
  float elements[n][n];
} matrix;

void SVD_matrix_init();
void SVD_matrix_mul(matrix* matrix1, matrix* matrix2, matrix* result);
float SVD_matrix_dot(matrix* matrix1, matrix* matrix2, int row1, int col2);
void SVD_matrix_rotation_angles(matrix* matrix);
