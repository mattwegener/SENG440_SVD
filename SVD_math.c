
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
int32_t x_array = {-12868, -12458, -12049, -11639, -11230, -10820, -10410, -10001, -9591, -9182, -8772, -8362, -7953, -7543, -7134, -6724, -6314, -5905, -5495, -5086, -4676, -4266, -3857, -3447, -3038, -2628, -2218, -1809, -1399, -990, -580, -170, 239, 649, 1058, 1468, 1878, 2287, 2697, 3106, 3516, 3926, 4335, 4745, 5154, 5564, 5974, 6383, 6793, 7202, 7612, 8022, 8431, 8841, 9250, 9660, 10070, 10479, 10889, 11298, 11708, 12118, 12527, };

void TEST_SVD_math()
{
  // TODO
}
#endif
