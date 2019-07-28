
#include "SVD_defs.h"
#include "fixed_point.h"

#define PI_2      (6433)
#define PI_3      (4289)
#define PI_6      (2144)
#define PI_2_3    (8578)
#define PI_5_6    (10723)
#define PI        (12867)

// SINE
#define SEG1_SLOPE_S    (3911)
#define SEG2_SLOPE_S    (2863)
#define SEG3_SLOPE_S    (1048)
#define SEG4_SLOPE_S    (-1048)
#define SEG5_SLOPE_S    (-2863)
#define SEG6_SLOPE_S    (-3911)

#define SEG1_BIAS_S     (0)
#define SEG2_BIAS_S     (548)
#define SEG3_BIAS_S     (2449)
#define SEG4_BIAS_S     (5742)
#define SEG5_BIAS_S     (9544)
#define SEG6_BIAS_S     (12288)


// COSINE

#define SEG3_SLOPE_C    (-1048)
#define SEG2_SLOPE_C    (-2863)
#define SEG4_SLOPE_C    (-3911)
#define SEG1_SLOPE_C    (-3911)
#define SEG5_SLOPE_C    (-2863)
#define SEG6_SLOPE_C    (-1048)

#define SEG1_BIAS_C     (4092)
#define SEG2_BIAS_C     (5046)
#define SEG3_BIAS_C     (6144)
#define SEG4_BIAS_C     (6144)
#define SEG5_BIAS_C     (3949)
#define SEG6_BIAS_C     (-803)


// arctangent
#define COEFF_0644  (2637)
#define COEFF_0928  (3801)
#define COEFF_0142  (581)

#define FIX_1     (1 << Q)
#define FIX_0_5   (1 << (Q - 1))

// precondition: x is in fix-point format with Q as the fractional bit length
// precondition: x between -FIX_1 and +FIX_1
// returns: the piecewise-linear approximation of arctan(x)
static matrix_elem arctan(matrix_elem x)
{
  matrix_elem ret = 0;

  if (x >= -FIX_1 && x < -FIX_0_5)
  {
    ret = FSUB(FMUL(x, COEFF_0644, Q), COEFF_0644);
  }
  else if ( x >= -FIX_0_5 && x <= FIX_0_5)
  {
    ret = FMUL(x, COEFF_0928,Q);
  }
  else if (x > FIX_0_5 && x <= FIX_1)
  {
    ret = FADD(FMUL(x, COEFF_0644, Q), COEFF_0644);
  }

  return ret;
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
  else if (temp_x <= PI)
  {
      result = FADD(SEG6_BIAS_C, FMUL(SEG6_SLOPE_C, temp_x, Q));
  }

  // cosine: even function, don't need to negate for negative argument
  return result;
}

matrix_elem SVD_sin(matrix_elem x){
   matrix_elem result;
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
  else if (temp_x <= PI)
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
      ret = arctan(FDIV(x,y,Q);
      ret = PI_2 - ret;
    } 

}

matrix_elem SVD_abs(matrix_elem x)
{
    return (x >= 0) ? (x) : (-x);
}

#ifdef TEST
void TEST_SVD_math()
{
  assert()
}
#endif
