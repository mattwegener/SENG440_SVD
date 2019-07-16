
#include "SVD_math.h"

// INCLUSION OF math.h REQUIRES -lm COMPILER FLAG
#include <math.h>

matrix_elem SVD_tan(matrix_elem x){
  matrix_elem result =  tanf(x);
  return result;
}

matrix_elem SVD_cos(matrix_elem x){
  matrix_elem result =  cosf(x);
  return result;
}

matrix_elem SVD_sin(matrix_elem x){
  matrix_elem result =  sinf(x);
  return result;
}

matrix_elem SVD_atan(matrix_elem y, matrix_elem x){
    return atanf(y/x);
}

matrix_elem SVD_abs(matrix_elem x)
{
    return fabs(x);
}

#ifdef TEST
void TEST_SVD_math()
{
  // TODO
}
#endif
