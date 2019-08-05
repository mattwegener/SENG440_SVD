
#include "SVD_math.h"

// INCLUSION OF math.h REQUIRES -lm COMPILER FLAG

#ifdef TEST
#include <math.h>
#include <assert.h>
#include <stdio.h>

void TEST_SVD_math()
{
  int32_t atan_arg[100];
  float ax = -1.0; // 0.02

  for (int i = 0; i < 100; i++)
  {

      atan_arg[i] = TOFIX(ax, ATANQ);
      ax += 0.02;
  }
  // test the arctan
    for (int i = 0; i < 100; i++)
    {
      int32_t y = arctan(atan_arg[i]);
      float yf = atanf(TOFLT(atan_arg[i], ATANQ));
      printf("x = %f, y = %f, yf = %f\n", TOFLT(atan_arg[i], ATANQ), TOFLT(y, ATANQ), yf);
      assert( fabs(yf - TOFLT(y,ATANQ)) <=  0.019);
    }
}
#endif
