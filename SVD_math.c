
#include "SVD_defs.h"
#include "fixed_point.h"

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
#define SEG5_SLOPE_C    (-278)
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

// precondition: x is in fix-point format with Q as the fractional bit length
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

matrix_elem SVD_atan(matrix_elem y, matrix_elem x){
    
    matrix_elem ret;

    if (x > y)
      ret = arctan(FDIV(y,x,Q));
    else
    {
      ret = arctan(FDIV(x,y,Q));
      ret = PI_2 - ret;
    } 

}

matrix_elem SVD_abs(matrix_elem x)
{
    return (x >= 0) ? (x) : (-x);
}

#ifdef TEST
#include <math.h>
#include <assert.h>
matrix_elem x_array[63] = {-12868, -12458, -12049, -11639, -11230, -10820, -10410, -10001, -9591, -9182, -8772, -8362, -7953, -7543, -7134, -6724, -6314, -5905, -5495, -5086, -4676, -4266, -3857, -3447, -3038, -2628, -2218, -1809, -1399, -990, -580, -170, 239, 649, 1058, 1468, 1878, 2287, 2697, 3106, 3516, 3926, 4335, 4745, 5154, 5564, 5974, 6383, 6793, 7202, 7612, 8022, 8431, 8841, 9250, 9660, 10070, 10479, 10889, 11298, 11708, 12118, 12527, };
matrix_elem atan_arg[81] = {-4096, -3994, -3891, -3789, -3686, -3584, -3482, -3379, -3277, -3174, -3072, -2970, -2867, -2765, -2662, -2560, -2458, -2355, -2253, -2150, -2048, -1946, -1843, -1741, -1638, -1536, -1434, -1331, -1229, -1126, -1024, -922, -819, -717, -614, -512, -410, -307, -205, -102, 0, 102, 205, 307, 410, 512, 614, 717, 819, 922, 1024, 1126, 1229, 1331, 1434, 1536, 1638, 1741, 1843, 1946, 2048, 2150, 2253, 2355, 2458, 2560, 2662, 2765, 2867, 2970, 3072, 3174, 3277, 3379, 3482, 3584, 3686, 3789, 3891, 3994, 4096, };

void TEST_SVD_math()
{

    // test the sine
    for (int i = 0; i < 63; i++)
    {
      matrix_elem y = SVD_sin(x_array[i]);
      float yf = sinf(TOFLT(x_array[i], Q));
      printf("x = %f, y = %f, yf = %f\n", TOFLT(x_array[i], Q), TOFLT(y, Q), yf);
      //assert( fabs(yf - TOFLT(y,Q)) <=  0.05);
    }

    // test the cosine
    for (int i = 0; i < 63; i++)
    {
      matrix_elem y = SVD_cos(x_array[i]);
      float yf = cosf(TOFLT(x_array[i], Q));
      assert( fabs(yf - TOFLT(y,Q)) <=  0.05);
    }

    // test the cosine
    for (int i = 0; i < 81; i++)
    {
      matrix_elem y = arctan(atan_arg[i]);
      float yf = atanf(TOFLT(atan_arg[i], Q));
      assert( fabs(yf - TOFLT(y,Q)) <=  0.05);
    }
}
#endif
