
#ifndef SVD_MATH_H
#define SVD_MATH_H

#include "SVD_defs.h"
#include <stdint.h>
#include <math.h>
//#include <arm_neon.h>

#ifdef TEST
#include <stdio.h>
#endif

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

    ///////// Singularities ////////////
    if (x == 0)
    {
        if ( y > 0)
        {
            return ATAN_QPI_2; // return PI/2
        }

        if (y < 0)
        {
            return -ATAN_QPI_2; // return -PI/2
        }

        if (y == 0)
        {
            /// THIS IS THE UNDEFINED SINGULARITY
            /// We haven't dealt with this;
            return 0;
        }
    }
    ////////////////////////////////////


    y64_temp = (int64_t)y;
    x64_temp = (int64_t)x;


    printf("y64_temp = &llx\n", y64_temp);
    printf("x64_temp = &llx\n", x64_temp);

    if (iABS(x) > iABS(y))
    {
        printf("x > y\n");

        y64_temp = y64_temp << ATANQ;
        printf("y64_temp after shift = &llx\n", y64_temp);
        div_temp = y64_temp / x64_temp;
        printf("div_temp = &llx\n", div_temp);
        div_res = (int32_t)div_temp;
        printf("div_res = &x\n", div_res);

        ret = arctan(div_res);
    }
    else
    {
        print(" x not > y\n");

        x64_temp = x64_temp << ATANQ;
        printf("x64_temp after shift = &llx\n", x64_temp);
        div_temp = x64_temp / y64_temp;
        printf("div_temp = &llx\n", div_temp);
        div_res = (int32_t)div_temp;
        printf("div_res = &x\n", div_res);

        
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

    print("ret = %d\n", ret);
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
