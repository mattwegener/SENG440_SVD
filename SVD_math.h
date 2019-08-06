
#ifndef SVD_MATH_H
#define SVD_MATH_H

#include "SVD_defs.h"
#include <stdint.h>
#include <math.h>
//#include <arm_neon.h>

#ifdef TEST
#include <stdio.h>
#include <assert.h>
#endif

/* convert to and from floating point */
#define iABS(x)             ((x > 0) ? (x) : (-x))
#define TOFIX(d, q)         ((int32_t)( (d)*(float)(1<<(q)) ))
#define TOFLT(a, q)         ( (float)(a) / (float)(1<<(q)) )
#define FCONV(a, q1, q2)    (((q2)>(q1)) ? (a)<<((q2)-(q1)) : (a)>>((q1)-(q2)))

#define SINCOS_Q1		(12)
#define SINCOS_Q2		(24)
#define SINCOS_ROUND_BIT    (1 << 11)
#define SINCOS_1		(4096)
#define SINCOS_PI		(12867)
#define SINCOS_PI2		(6433)

#define SIN_SLOPE_1		(4049)
#define SIN_SLOPE_2		(3773)
#define SIN_SLOPE_3		(3240)
#define SIN_SLOPE_4		(2486)
#define SIN_SLOPE_5		(1810)
#define SIN_SLOPE_6		(1315)
#define SIN_SLOPE_7		(798)
#define SIN_SLOPE_8		(267)

#define SIN_CONST_1		(0)
#define SIN_CONST_2		(295918)
#define SIN_CONST_3		(1439257)
#define SIN_CONST_4		(3864647)
#define SIN_CONST_5		(6764445)
#define SIN_CONST_6		(9151348)
#define SIN_CONST_7		(11924162)
#define SIN_CONST_8		(15054839)

#define COS_SLOPE_1		(-268)
#define COS_SLOPE_2		(-799)
#define COS_SLOPE_3		(-1316)
#define COS_SLOPE_4		(-1811)
#define COS_SLOPE_5		(-2487)
#define COS_SLOPE_6		(-3241)
#define COS_SLOPE_7		(-3774)
#define COS_SLOPE_8		(-4050)

#define COS_CONST_1		(16777216)
#define COS_CONST_2		(17061822)
#define COS_CONST_3		(17616385)
#define COS_CONST_4		(18412020)
#define COS_CONST_5		(19861919)
#define COS_CONST_6		(22287308)
#define COS_CONST_7		(24573987)
#define COS_CONST_8		(26053578)

#define SIN_LIM_1		(1072)
#define SIN_LIM_2		(2144)
#define SIN_LIM_3		(3216)
#define SIN_LIM_4		(4289)
#define SIN_LIM_5		(4825)
#define SIN_LIM_6		(5361)
#define SIN_LIM_7		(5897)
#define SIN_LIM_8		(6433)

#define COS_LIM_1		(536)
#define COS_LIM_2		(1072)
#define COS_LIM_3		(1608)
#define COS_LIM_4		(2144)
#define COS_LIM_5		(3216)
#define COS_LIM_6		(4289)
#define COS_LIM_7		(5361)
#define COS_LIM_8		(6433)

// precondition: x in Q12
// x between -pi and +pi
static inline int32_t SVD_cos(int32_t x)
{
    #ifdef TEST
        // assert the range of the input argument
        assert(x <= SINCOS_PI);
        assert(x >= -SINCOS_PI);
    #endif

    int32_t ret;
    int32_t range_scale = 1;
    int32_t slope;
    int32_t constant;
    // cosine is even, cos(x) = cos(-x)
    x = iABS(x);

    // easy returns:
    if (x == 0)
        return SINCOS_1; // return 1
    
    if (x == SINCOS_PI2)
        return 0; // return 0

    if (x == SINCOS_PI)
        return -SINCOS_1; // return -1

    // get x in 0 to pi/2
    // mirror across pi/2
    if (x > SINCOS_PI2)
    {
        x = SINCOS_PI - x;
        range_scale = -1; // save this so we know to negate the result later
    }

    // now check ranges in best way possible

    if (x < COS_LIM_1)
    {
        slope = COS_SLOPE_1;
        constant = COS_CONST_1;
    }
    else if (x < COS_LIM_2)
    {
        slope = COS_SLOPE_2;
        constant = COS_CONST_2;
    }
    else if (x < COS_LIM_3)
    {
        slope = COS_SLOPE_3;
        constant = COS_CONST_3;
    }
    else if (x < COS_LIM_4)
    {
        slope = COS_SLOPE_4;
        constant = COS_CONST_4;
    }
    else if (x < COS_LIM_5)
    {
        slope = COS_SLOPE_5;
        constant = COS_CONST_5;
    }
    else if (x < COS_LIM_6)
    {
        slope = COS_SLOPE_6;
        constant = COS_CONST_6;
    }
    else if (x < COS_LIM_7)
    {
        slope = COS_SLOPE_7;
        constant = COS_CONST_7;
    }
    else if (x < COS_LIM_8)
    {
        slope = COS_SLOPE_8;
        constant = COS_CONST_8;
    }

    ret = (slope * x);
    // ret is now in format SINCOS_Q2
    ret += constant; // add the constant, pre-encoded in SINCOS_Q2
    ret = (ret + SINCOS_ROUND_BIT) >> SINCOS_Q1;

    return range_scale * ret; // return with sign appropriate to range
}

static inline int32_t SVD_sin(int32_t x)
{
    #ifdef TEST
        // assert the range of the input argument
        assert(x <= SINCOS_PI);
        assert(x >= -SINCOS_PI);
    #endif

    int32_t ret;
    int32_t range_scale = 1;
    int32_t slope;
    int32_t constant;

    // sine is odd, but symmetric
    if (x < 0)
    {
        x = iABS(x);
        range_scale = -1;
    }

    // easy returns:
    if (x == 0)
        return 0; // return 0
    
    if (x == SINCOS_PI2)
        return range_scale * SINCOS_1; // return +/-1

    if (x == SINCOS_PI)
        return 0;

    // get x in 0 to pi/2
    // mirror across pi/2
    if (x > SINCOS_PI2)
    {
        x = SINCOS_PI - x;
        // unlike cosine, here we don't need to track the range_scale
        // since it positive on both sides of pi/2
    }

    // now check ranges in best way possible

    if (x < SIN_LIM_1)
    {
        slope = SIN_SLOPE_1;
        constant = SIN_CONST_1;
    }
    else if (x < SIN_LIM_2)
    {
        slope = SIN_SLOPE_2;
        constant = SIN_CONST_2;
    }
    else if (x < SIN_LIM_3)
    {
        slope = SIN_SLOPE_3;
        constant = SIN_CONST_3;
    }
    else if (x < SIN_LIM_4)
    {
        slope = SIN_SLOPE_4;
        constant = SIN_CONST_4;
    }
    else if (x < SIN_LIM_5)
    {
        slope = SIN_SLOPE_5;
        constant = SIN_CONST_5;
    }
    else if (x < SIN_LIM_6)
    {
        slope = SIN_SLOPE_6;
        constant = SIN_CONST_6;
    }
    else if (x < SIN_LIM_7)
    {
        slope = SIN_SLOPE_7;
        constant = SIN_CONST_7;
    }
    else if (x < SIN_LIM_8)
    {
        slope = SIN_SLOPE_8;
        constant = SIN_CONST_8;
    }

    ret = (slope * x);
    // ret is now in format SINCOS_Q2
    ret += constant; // add the constant, pre-encoded in SINCOS_Q2
    ret = (ret + SINCOS_ROUND_BIT) >> SINCOS_Q1;

    return range_scale * ret; // return with sign appropriate to range
}

#define ATANQ           (14)
#define ATANQ_ROUND_BIT     (1 << 13)
#define ATAN_QPI_2      (25735) // Q14
#define ATAN_1          (16384) // Q14
#define ATAN_0_5        (8192) // Q14

#define ATAN_COEFF_0644     (10551) // Q14 format
#define ATAN_COEFF_0928     (15204) //Q14 format
#define ATAN_COEFF_0142     (38117834) // Q28 format


static inline int32_t arctan(int32_t x)
{
    #ifdef TEST
        // assert the range of the input argument
        assert(x <= ATAN_1);
        assert(x >= -ATAN_1);
    #endif

    int32_t temp;

    if ( x > ATAN_0_5) // we know the argument will be less than 1, no need to check the upper bound
    {
        temp = ATAN_COEFF_0142;
        temp += (ATAN_COEFF_0644 * x);
        temp = (temp + ATANQ_ROUND_BIT) >> ATANQ;
        return temp;
    }
    
    if (x >= -ATAN_0_5 && x <= ATAN_0_5)
    {
        temp = (ATAN_COEFF_0928 * x);
        temp = (temp + ATANQ_ROUND_BIT) >> ATANQ;
        return temp;
    }

    if (x < -ATAN_0_5)
    {
        temp = -ATAN_COEFF_0142; // minus sign important!
        temp += (ATAN_COEFF_0644 * x);
        temp = (temp + ATANQ_ROUND_BIT) >> ATANQ;
        return temp;
    }

    return 0; //this is dead code, placed to elim compiler warnings
}

// preconditions: y, x are in Q.14 format
// returns it in Q14 format
static inline int32_t SVD_atan(int32_t y, int32_t x)
{
    #ifdef TEST
        // assert the values of the input argument
        if (y == 0) assert( x != 0);
        if (x == 0) assert( y != 0);
    #endif

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

    if (iABS(x) > iABS(y))
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
