
#include "SVD_math.h"

// INCLUSION OF math.h REQUIRES -lm COMPILER FLAG
#include <math.h>

double SVD_tan(double x){
  double result =  tan(x);
  return result;
}

double SVD_cos(double x){
  double result =  cos(x);
  return result;
}

double SVD_sin(double x){
  double result =  sin(x);
  return result;
}

double SVD_atan2(double x, double y){
  double result =  atan2(x,y);
  return result;
}

#ifdef TEST
void TEST_SVD_math()
{
  // TODO
}
#endif
