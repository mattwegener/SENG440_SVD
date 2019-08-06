
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

#define SINCOS_Q1		(13)
#define SINCOS_ROUND_BIT		(4096)
#define SINCOS_1		(8192)
#define SINCOS_PI		(25735)
#define SINCOS_PI2		(12867)

#define SIN_SLOPE_1		(8098)
#define SIN_SLOPE_2		(7546)
#define SIN_SLOPE_3		(6480)
#define SIN_SLOPE_4		(4972)
#define SIN_SLOPE_5		(3620)
#define SIN_SLOPE_6		(2631)
#define SIN_SLOPE_7		(1597)
#define SIN_SLOPE_8		(535)

#define SIN_CONST_1		(0)
#define SIN_CONST_2		(1183672)
#define SIN_CONST_3		(5757030)
#define SIN_CONST_4		(15458588)
#define SIN_CONST_5		(27057782)
#define SIN_CONST_6		(36605394)
#define SIN_CONST_7		(47696650)
#define SIN_CONST_8		(60219356)

#define COS_SLOPE_1		(-536)
#define COS_SLOPE_2		(-1598)
#define COS_SLOPE_3		(-2632)
#define COS_SLOPE_4		(-3621)
#define COS_SLOPE_5		(-4973)
#define COS_SLOPE_6		(-6481)
#define COS_SLOPE_7		(-7547)
#define COS_SLOPE_8		(-8099)

#define COS_CONST_1		(67108864)
#define COS_CONST_2		(68247291)
#define COS_CONST_3		(70465542)
#define COS_CONST_4		(73648080)
#define COS_CONST_5		(79447677)
#define COS_CONST_6		(89149235)
#define COS_CONST_7		(98295951)
#define COS_CONST_8		(104214312)

#define SIN_LIM_1		(2144)
#define SIN_LIM_2		(4289)
#define SIN_LIM_3		(6433)
#define SIN_LIM_4		(8578)
#define SIN_LIM_5		(9650)
#define SIN_LIM_6		(10723)
#define SIN_LIM_7		(11795)
#define SIN_LIM_8		(12867)

#define COS_LIM_1		(1072)
#define COS_LIM_2		(2144)
#define COS_LIM_3		(3216)
#define COS_LIM_4		(4289)
#define COS_LIM_5		(6433)
#define COS_LIM_6		(8578)
#define COS_LIM_7		(10723)
#define COS_LIM_8		(12867)

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

#define ATAN_TO_SINCOS_SHIFT        (ATANQ - SINCOS_Q1)
#define ATAN_TO_SINCOS_ROUND_BIT    (1 << (ATAN_TO_SINCOS_SHIFT - 1))


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
