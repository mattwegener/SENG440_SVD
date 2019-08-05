
#ifndef SVD_MATH_H
#define SVD_MATH_H

#include "SVD_defs.h"
#include <stdint.h>
#include <math.h>
//#include <arm_neon.h>

/* convert to and from floating point */
#define TOFIX(d, q) ((int)( (d)*(double)(1<<(q)) ))
#define TOFLT(a, q) ( (double)(a) / (double)(1<<(q)) )


static inline matrix_elem SVD_cos(matrix_elem x){
  matrix_elem result =  cosf(x);
  return result;
}

static inline matrix_elem SVD_sin(matrix_elem x){
  matrix_elem result =  sinf(x);
  return result;
}

#define iABS(x)     ((x > 0) ? (x) : (-x))
#define ATANQ       (14)
#define ATAN_QPI_2      (25735) // Q14
#define ATAN_1          (16384) // Q14
#define ATAN_0_5        (8192) // Q14

#define ATAN_COEFF_0644     (10551) // Q14 format
#define ATAN_COEFF_0928     (15204) //Q14 format
#define ATAN_COEFF_0142     (38117834) // Q28 format


static inline int32_t arctan(int32_t x)
{
    int32_t temp;

    if ( x > ATAN_0_5) // we know the argument will be less than 1, no need to check the upper bound
    {
        temp = ATAN_COEFF_0142;
        temp += (ATAN_COEFF_0644 * x);
        temp = temp >> ATANQ;
        return temp;
    }
    
    if (x >= -ATAN_0_5 && x <= ATAN_0_5)
    {
        return (ATAN_COEFF_0928 * x) >> ATANQ;
    }

    if (x < -ATAN_0_5)
    {
        temp = -ATAN_COEFF_0142; // minus sign important!
        temp += (ATAN_COEFF_0644 * x);
        temp = temp >> ATANQ;
        return temp;
    }

    return 0; //this is dead code, placed to elim compiler warnings
}

// preconditions: y, x are in Q.14 format
// returns it in Q14 format
static inline int32_t SVD_atan(int32_t y, int32_t x)
{
    int64_t y64_temp, x64_temp;
    int64_t div_temp;
    int32_t div_res;
    int32_t ret;

    y64_temp = (int16_t)y;
    x64_temp = (int64_t)x;

    if (iABS(x) >= iABS(y))
    {
        y64_temp = y64_temp << ATANQ;
        div_temp = y64_temp / x64_temp;
        div_res = (int32_t)div_temp;

        ret = arctan(div_res);
    }
    else
    {
        x64_temp = x64_temp << ATANQ;
        div_temp = x64_temp / y64_temp;
        div_res = (int32_t)div_temp;

        
        ret = arctan(div_res);

        if (ret >= 0)
        {
            ret = ATAN_QPI_2 - ret;
        }
        else
        {
            ret = -ATAN_QPI_2 - ret;
        }
        
    }

    return ret;
    
}


static inline matrix_elem SVD_abs(matrix_elem x)
{
    return fabs(x);
}


#ifdef TEST
void TEST_SVD_math(void);
#endif

#endif /* SVD_MATH_H */
