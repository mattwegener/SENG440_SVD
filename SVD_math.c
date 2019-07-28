
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
matrix_elem atan_arg[81] = {-4096, -3994, -3891, -3789, -3686, -3584, -3482, -3379, -3277, -3174, -3072, -2970, -2867, -2765, -2662, -2560, -2458, -2355, -2253, -2150, -2048, -1946, -1843, -1741, -1638, -1536, -1434, -1331, -1229, -1126, -1024, -922, -819, -717, -614, -512, -410, -307, -205, -102, 0, 102, 205, 307, 410, 512, 614, 717, 819, 922, 1024, 1126, 1229, 1331, 1434, 1536, 1638, 1741, 1843, 1946, 2048, 2150, 2253, 2355, 2458, 2560, 2662, 2765, 2867, 2970, 3072, 3174, 3277, 3379, 3482, 3584, 3686, 3789, 3891, 3994, 4096, };
void TEST_SVD_math()
{
  // TODO
}
#endif
