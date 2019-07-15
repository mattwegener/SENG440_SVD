
#include "SVD_math.h"

// INCLUSION OF math.h REQUIRES -lm COMPILER FLAG
#include <math.h>

float SVD_tan(float x){
  float result =  tanf(x);
  return result;
}

float SVD_cos(float x){
  float result =  cosf(x);
  return result;
}

float SVD_sin(float x){
  float result =  sinf(x);
  return result;
}

float SVD_atan2(float y, float x){
  if ( fabs(x) >= fabs(y) )
    return atan2f(y,x);
  else
    return ((float)(M_PI_2) - atan2f(x, y));
}

#ifdef TEST
void TEST_SVD_math()
{
  // TODO
}
#endif
