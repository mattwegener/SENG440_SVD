
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

  int32_t sincos_arg[100];
  float sx = -M_PI;
  
  for (int i = 0; i < 100; i++)
  {
      int32_t val = TOFIX(sx, SINCOS_Q1);
      if (val >= SINCOS_PI)
        val = SINCOS_PI;
      else if (val <= -SINCOS_PI)
        val = -SINCOS_PI;
      
      sincos_arg[i] = val;
      sx += (2 * M_PI / 100.0);
  }

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
    //printf("x = %f, y = %f, yf = %f\n", TOFLT(atan_arg[i], ATANQ), TOFLT(y, ATANQ), yf);
    assert( fabs(yf - TOFLT(y,ATANQ)) <=  0.019);
  }

  for (int i = 0; i < 100; i++)
  {
    int32_t y = SVD_cos(sincos_arg[i]);
    float yf = cosf(TOFLT(sincos_arg[i], SINCOS_Q1));

    //printf("x = %f, y = %f, yf = %f\n", TOFLT(sincos_arg[i], SINCOS_Q1), TOFLT(y, SINCOS_Q1), yf);
    assert( fabs(yf - TOFLT(y,SINCOS_Q1)) <=  0.01);
  }

  for (int i = 0; i < 100; i++)
  {
    int32_t y = SVD_sin(sincos_arg[i]);
    float yf = sinf(TOFLT(sincos_arg[i], SINCOS_Q1));

    //printf("x = %f, y = %f, yf = %f\n", TOFLT(sincos_arg[i], SINCOS_Q1), TOFLT(y, SINCOS_Q1), yf);
    assert( fabs(yf - TOFLT(y,SINCOS_Q1)) <=  0.01);
  }  
}
#endif
