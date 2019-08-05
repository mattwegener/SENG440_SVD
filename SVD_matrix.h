
#ifndef SVD_MATRIX_H
#define SVD_MATRIX_H

#include "SVD_math.h"
#include "SVD_defs.h"
#include <arm_neon.h>

static inline __attribute__((always_inline)) void SVD_matrix_mul(matrix left, matrix right, matrix out) 
{
  // modified from Coding for NEON --- Part 3: Matrix Multiplication
    float32x4x4_t left_neon = vld4q_f32(&(left[0][0]));
    float32x4x4_t right_neon = vld4q_f32(&(right[0][0]));
    float32x4x4_t out_neon;
    
    float32x4_t scalar_vec;
    
    ////////// do column 0 ////////////////
    out_neon.val[0] = vdupq_n_f32(0.0);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[0], 0) );
    out_neon.val[0] = vmlaq_f32(out_neon.val[0], scalar_vec, left_neon.val[0]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[0], 1) );
    out_neon.val[0] = vmlaq_f32(out_neon.val[0], scalar_vec, left_neon.val[1]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[0], 2) );
    out_neon.val[0] = vmlaq_f32(out_neon.val[0], scalar_vec, left_neon.val[2]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[0], 3) );
    out_neon.val[0] = vmlaq_f32(out_neon.val[0], scalar_vec, left_neon.val[3]);

    ////////// do column 1 ////////////////
    out_neon.val[1] = vdupq_n_f32(0.0);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[1], 0) );
    out_neon.val[1] = vmlaq_f32(out_neon.val[1], scalar_vec, left_neon.val[0]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[1], 1) );
    out_neon.val[1] = vmlaq_f32(out_neon.val[1], scalar_vec, left_neon.val[1]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[1], 2) );
    out_neon.val[1] = vmlaq_f32(out_neon.val[1], scalar_vec, left_neon.val[2]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[1], 3) );
    out_neon.val[1] = vmlaq_f32(out_neon.val[1], scalar_vec, left_neon.val[3]);

    ////////// do column 2 ////////////////
    out_neon.val[2] = vdupq_n_f32(0.0);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[2], 0) );
    out_neon.val[2] = vmlaq_f32(out_neon.val[2], scalar_vec, left_neon.val[0]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[2], 1) );
    out_neon.val[2] = vmlaq_f32(out_neon.val[2], scalar_vec, left_neon.val[1]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[2], 2) );
    out_neon.val[2] = vmlaq_f32(out_neon.val[2], scalar_vec, left_neon.val[2]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[2], 3) );
    out_neon.val[2] = vmlaq_f32(out_neon.val[2], scalar_vec, left_neon.val[3]);

    ////////// do column 3 ////////////////
    out_neon.val[3] = vdupq_n_f32(0.0);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[3], 0) );
    out_neon.val[3] = vmlaq_f32(out_neon.val[3], scalar_vec, left_neon.val[0]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[3], 1) );
    out_neon.val[3] = vmlaq_f32(out_neon.val[3], scalar_vec, left_neon.val[1]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[3], 2) );
    out_neon.val[3] = vmlaq_f32(out_neon.val[3], scalar_vec, left_neon.val[2]);

    scalar_vec = vdupq_n_f32 ( vgetq_lane_f32(right_neon.val[3], 3) );
    out_neon.val[3] = vmlaq_f32(out_neon.val[3], scalar_vec, left_neon.val[3]);
   
    //////////// OUTPUT BACK TO MATRIX ////////////
    vst4q_f32(&out[0][0], out_neon); 
}

static inline __attribute__((always_inline)) void SVD_matrix_trans(matrix in, matrix out) 
{
    /*
  for ( int i = 0; i < N; i++ )
  {
    for ( int j = 0; j < N; j++ )
    {
      out[j][i] = in[i][j];
    }
  }
  */

  float32x4x4_t temp_matrix = vld4q_f32(&(in[0][0]));

  /*
  #ifdef TEST
  if(in[0][0] == temp_matrix.val[0].val[0]){
      printf("%f == %f\n", in[0][0],temp_matrix.val[0].val[0]);
  }else{
      printf("in[0][0] = %f, temp_matrix[0][0] = %f\n", in[0][0],temp_matrix.val[0].val[0]);
  }
  #endif
  */

  /*void vst1q_lane_f32(Scalar_t* N, Vector_t M, int n);
  Scalar_t: float32_t
  Vector_t: float32x4_t
  int range: 0-3
  Purpose: Store element n (lane) from vector M (array) into memory at address of scalar N

  void vst1q_f32(Scalar_t* N, Vector_t M);
  Scalar_t: float32_t
  Vector_t: float32x4_t
  Purpose: Store vector M into memory at address of scalar N

  Following should store 1 row back into the out matrix
  vst1q_lane(out[0][0],temp_matrix.val[0]);
  */

  //for can be unrolled later
  for(int i = 0; i < N; i++){
      vst1q_f32(&(out[i][0]),temp_matrix.val[i]);
  }
}

static inline __attribute__((always_inline)) void SVD_matrix_copy(matrix in, matrix out) 
{
    /*
    for( int i = 0; i < N; i++ )
    {
        for ( int j = 0; j < N; j++ )
        {
            out[i][j] = in[i][j];
        }
    }*/

    for(int i = 0; i<N; i++){
        float32x4_t temp = vld1q_f32(&(in[i][0]));
        vst1q_f32(&(out[i][0]),temp);
    }

}

static inline bool SVD_matrix_equal(matrix matrix1, matrix matrix2)
{
    bool ret = true;
    int i,j;
    for (i = 0; i < N; i++)
    {
      for (j = 0; j < N; j++)
      {
        if (SVD_abs( matrix1[i][j] - matrix2[i][j]) > EPS)
        {
          ret = false;
          break;
        }
      }
    }
    return ret;
}


static inline __attribute__((always_inline)) bool SVD_matrix_isDiagonal(matrix in)
{

    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            if (i != j)
            {
                if (SVD_abs(in[i][j]) >= EPS)
                  return false;
            }
        }
    }
    return true; // fall through

    /* // ACTUALY BETTER THE ORIGINAL WAY
    //SIMD Implementation
    float32x4_t off_1, off_2, off_3, eps;
    uint32x4_t res_1, res_2, res_3, result;
    uint32_t total;

    float32x4x4_t temp_in = vld4q_f32(&(in[0][0]));
    eps = vdupq_n_f32(EPS);

    off_1 = vcombine_f32(vget_high_f32(temp_in.val[0]),vget_low_f32(temp_in.val[2]));
    off_2 = vcombine_f32(vget_high_f32(temp_in.val[1]),vget_low_f32(temp_in.val[3]));

    off_3 = vsetq_lane_f32( vgetq_lane_f32(temp_in.val[0],1), off_3, 0);
    off_3 = vsetq_lane_f32( vgetq_lane_f32(temp_in.val[1],0), off_3, 1);
    off_3 = vsetq_lane_f32( vgetq_lane_f32(temp_in.val[2],3), off_3, 2);
    off_3 = vsetq_lane_f32( vgetq_lane_f32(temp_in.val[3],2), off_3, 3);

    res_1 = vcageq_f32(off_1, eps);
    res_2 = vcageq_f32(off_2, eps);
    res_3 = vcageq_f32(off_3, eps);

    result = vaddq_u32(res_1, res_2);
    result = vaddq_u32(result, res_3);

    total = 0;
    total += vgetq_lane_u32(result, 0);
    total += vgetq_lane_u32(result, 1);
    total += vgetq_lane_u32(result, 2);
    total += vgetq_lane_u32(result, 3);

    if(total > 0) return false;
    else return true;
    */
}

#ifdef TEST
void SVD_matrix_print(matrix m);
void TEST_SVD_matrix_equal(void);
void TEST_SVD_matrix_dot(void);
void TEST_SVD_matrix_mul(void);
void TEST_SVD_matrix_trans(void);
void TEST_SVD_matrix_copy(void);
void TEST_SVD_matrix_isDiagonal(void);
#endif

#endif
