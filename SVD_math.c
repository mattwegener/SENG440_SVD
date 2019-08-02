
#include "SVD_defs.h"
#include "fixed_point.h"
#include "SVD_math.h"

#ifdef TEST
#include <math.h>
#include <assert.h>
#endif

#define PI_6      (134)
#define PI_3      (268)
#define PI_2      (402)
#define PI_2_3    (536)
#define PI_5_6    (670)
#define PI        (804)

// SINE
#define SEG1_SLOPE_S    (244)
#define SEG2_SLOPE_S    (178)
#define SEG3_SLOPE_S    (65)
#define SEG4_SLOPE_S    (-65)
#define SEG5_SLOPE_S    (-178)
#define SEG6_SLOPE_S    (-244)

#define SEG1_BIAS_S     (0)
#define SEG2_BIAS_S     (34)
#define SEG3_BIAS_S     (153)
#define SEG4_BIAS_S     (358)
#define SEG5_BIAS_S     (596)
#define SEG6_BIAS_S     (768)


// COSINE

#define SEG1_SLOPE_C    (-65)
#define SEG2_SLOPE_C    (-178)
#define SEG3_SLOPE_C    (-244)
#define SEG4_SLOPE_C    (-244)
#define SEG5_SLOPE_C    (-178)
#define SEG6_SLOPE_C    (-65)

#define SEG1_BIAS_C     (256)
#define SEG2_BIAS_C     (315)
#define SEG3_BIAS_C     (384)
#define SEG4_BIAS_C     (384)
#define SEG5_BIAS_C     (246)
#define SEG6_BIAS_C     (-50)


// arctangent the calculation is in Q = 12 format
#define COEFF_0644  (2637)
#define COEFF_0928  (3801)
#define COEFF_0142  (581)

#define FIX_0_5   (1 << (Q - 1))

// precondition: x is in fix-point format with 8 as the fractional bit length
// precondition: x between -FIX_1 and +FIX_1
// returns: the piecewise-linear approximation of arctan(x)
static matrix_elem arctan(matrix_elem x)
{
  matrix_elem ret = 0;
  matrix_elem temp = 0;

  // do the operation in q = 12
  matrix_elem x_temp = FCONV(x, Q, Q12);

  if (/*x >= -FIX_1 &&*/ x < -FIX_0_5)
  {
    temp = FMUL(x_temp, COEFF_0644, Q12);
    ret = FSUB(temp, COEFF_0142);
  }
  else if ( x >= -FIX_0_5 && x <= FIX_0_5)
  {
    ret = FMUL(x_temp, COEFF_0928,Q12);
  }
  else if (x > FIX_0_5 /*&& x <= FIX_1*/)
  {
    temp = FMUL(x_temp, COEFF_0644, Q12);
    ret = FADD(temp, COEFF_0142);
  }

  return FCONV(ret, Q12, Q); // return as q = 8
}

matrix_elem SVD_tan(matrix_elem x){
  matrix_elem result = 1;
  return result;
}

matrix_elem SVD_cos(matrix_elem x){

  matrix_elem result;
  matrix_elem temp_x;

  if (x < 0)
    temp_x = -x;
  else
    temp_x = x;

  if (temp_x == 0)
    return FIX_1;

  if (temp_x == PI)
    return -FIX_1;

  if (temp_x == PI_2)
    return 0;


  if (temp_x <= PI_6)
  {
      result = FADD(SEG1_BIAS_C, FMUL(SEG1_SLOPE_C, temp_x, Q));
  }
  else if (temp_x <= PI_3)
  {
      result = FADD(SEG2_BIAS_C, FMUL(SEG2_SLOPE_C, temp_x, Q));
  }
  else if (temp_x <= PI_2)
  {
      result = FADD(SEG3_BIAS_C, FMUL(SEG3_SLOPE_C, temp_x, Q));
  }
  else if (temp_x <= PI_2_3)
  {
      result = FADD(SEG4_BIAS_C, FMUL(SEG4_SLOPE_C, temp_x, Q));
  }
  else if (temp_x <= PI_5_6)
  {
      result = FADD(SEG5_BIAS_C, FMUL(SEG5_SLOPE_C, temp_x, Q));
  }
  else /*if (temp_x <= PI)*/ // allow approximation to continue past bounds of function
  {
      result = FADD(SEG6_BIAS_C, FMUL(SEG6_SLOPE_C, temp_x, Q));
  }

  // cosine: even function, don't need to negate for negative argument
  return result;
}

matrix_elem SVD_sin(matrix_elem x){
  matrix_elem result = 0;
  matrix_elem temp_x;

  if (x < 0)
    temp_x = -x;
  else
    temp_x = x;


  if (temp_x == 0)
    return 0;

  if (temp_x == PI)
    return 0;

  if (x == PI_2)
    return FIX_1;

  if (x == -PI_2)
    return -FIX_1;


  if (temp_x <= PI_6)
  {
      result = FADD(SEG1_BIAS_S, FMUL(SEG1_SLOPE_S, temp_x, Q));
  }
  else if (temp_x <= PI_3)
  {
      result = FADD(SEG2_BIAS_S, FMUL(SEG2_SLOPE_S, temp_x, Q));
  }
  else if (temp_x <= PI_2)
  {
      result = FADD(SEG3_BIAS_S, FMUL(SEG3_SLOPE_S, temp_x, Q));
  }
  else if (temp_x <= PI_2_3)
  {
      result = FADD(SEG4_BIAS_S, FMUL(SEG4_SLOPE_S, temp_x, Q));
  }
  else if (temp_x <= PI_5_6)
  {
      result = FADD(SEG5_BIAS_S, FMUL(SEG5_SLOPE_S, temp_x, Q));
  }
  else /* if (temp_x <= PI) */ // outside of bounds just continue the approximation
  {
      result = FADD(SEG6_BIAS_S, FMUL(SEG6_SLOPE_S, temp_x, Q));
  }

  // sine: odd function, don't need to negate for negative argument
  if (x < 0)
    result = -result;
  
  return result;
}

matrix_elem SVD_abs(matrix_elem x)
{
    return (x >= 0) ? (x) : (-x);
}

matrix_elem SVD_atan(matrix_elem y, matrix_elem x){
    matrix_elem ret;

    /*
    if (SVD_abs(x) > SVD_abs(y) )
    {
      assert(x != 0);
      ret = arctan(FDIV(y,x,Q));
    }
    else
    {
      assert(y != 0);
      ret = arctan(FDIV(x,y,Q));
      ret = FSUB(PI_2,ret);
    }*/
    ret = TOFIX(atanf(TOFLT(y,Q) / TOFLT(x,Q)), Q );

    return ret;
}

#ifdef TEST
#include <math.h>
#include <assert.h>
matrix_elem x_array[100];
matrix_elem atan_arg[100];

void TEST_SVD_math()
{

  float ax = -1.0; // 0.02
  float sx = -3.141592; // 0.06283185

  for (int i = 0; i < 100; i++)
  {
      x_array[i] = TOFIX(sx, Q);
      sx += 0.06283185;

      atan_arg[i] = TOFIX(ax, Q);
      ax += 0.02;
  }

    // test the sine
    for (int i = 0; i < 100; i++)
    {
      matrix_elem y = SVD_sin(x_array[i]);
      float yf = sinf(TOFLT(x_array[i], Q));
      //printf("x = %f, y = %f, yf = %f\n", TOFLT(x_array[i], Q), TOFLT(y, Q), yf);
      assert( fabs(yf - TOFLT(y,Q)) <=  0.05);
    }

    // test the cosine
    for (int i = 0; i < 100; i++)
    {
      matrix_elem y = SVD_cos(x_array[i]);
      float yf = cosf(TOFLT(x_array[i], Q));
      //printf("x = %f, y = %f, yf = %f\n", TOFLT(x_array[i], Q), TOFLT(y, Q), yf);
      assert( fabs(yf - TOFLT(y,Q)) <=  0.05);
    }

    // test the arctan
    for (int i = 0; i < 100; i++)
    {
      matrix_elem y = arctan(atan_arg[i]);
      float yf = atanf(TOFLT(atan_arg[i], Q));
      //printf("x = %f, y = %f, yf = %f\n", TOFLT(atan_arg[i], Q), TOFLT(y, Q), yf);
      assert( fabs(yf - TOFLT(y,Q)) <=  0.05);
    }

    // test the SVD_atan

}
#endif
