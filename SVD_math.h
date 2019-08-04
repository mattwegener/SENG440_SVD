
#ifndef SVD_MATH_H
#define SVD_MATH_H

#include "SVD_defs.h"

matrix_elem SVD_sin(matrix_elem x);
matrix_elem SVD_cos(matrix_elem x);
matrix_elem SVD_atan(matrix_elem y, matrix_elem x);
matrix_elem SVD_abs(matrix_elem x);

#ifdef TEST
void TEST_SVD_math(void);
#endif

#endif /* SVD_MATH_H */
