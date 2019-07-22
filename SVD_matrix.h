
#ifndef SVD_MATRIX_H
#define SVD_MATRIX_H

#include "SVD_math.h"
#include "SVD_defs.h"
//#include <stdbool.h>

void SVD_matrix_mul(matrix matrix1, matrix matrix2, matrix result);
void SVD_matrix_trans(matrix in, matrix out);
void SVD_matrix_copy(matrix in, matrix out);
float SVD_matrix_dot(matrix matrix1, matrix matrix2, int row1, int col2);
void SVD_matrix_rotation_angles(matrix matrix);
bool SVD_matrix_equal(matrix matrix1, matrix matrix2);
bool SVD_matrix_isDiagonal(matrix in);
void SVD_matrix_print(matrix in);

#ifdef TEST
void SVD_matrix_print(matrix m);
void TEST_SVD_matrix_equal(void);
void TEST_SVD_matrix_dot(void);
void TEST_SVD_matrix_mul(void);
void TEST_SVD_matrix_trans(void);
void TEST_SVD_matrix_copy(void);
void TEST_SVD_matrix_isDiagonal(void);
#endif

#endif /* SVD_MATRIX_H */
