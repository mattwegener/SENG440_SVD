
#ifndef SVD_MATRIX_H
#define SVD_MATRIX_H

#include "SVD_math.h"
#include "SVD_defs.h"

static inline float SVD_matrix_dot(matrix matrix1, matrix matrix2, int row1, int col2){
  matrix_elem dot = 0.0;
  int i;
  for(i = 0; i < N; i++){
    dot += matrix1[row1][i] * matrix2[i][col2];
  }
  return dot;
}

static inline void SVD_matrix_mul(matrix matrix1, matrix matrix2, matrix result){
  int j,k;
  for(j = 0; j < N; j++){
    for(k = 0; k < N; k++){
      result[j][k] = SVD_matrix_dot(matrix1,matrix2,j,k);
    }
  }
}

static inline void SVD_matrix_trans(matrix in, matrix out)
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

  float32x4x4_t temp_matrix = vld4q_f32(in[0][0]);

  #ifdef TEST
  if(in[0][0] == temp_matrix.val[0].val[0]){
      printf("%f == %f\n", in[0][0],temp_matrix.val[0].val[0]);
  }else{
      printf("in[0][0] = %f, temp_matrix[0][0] = %f\n", in[0][0],temp_matrix.val[0].val[0]);
  }
  #endif

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
      vst1q_lane(out[i][0],temp_matrix.val[i]);
  }
}

static inline void SVD_matrix_copy(matrix in, matrix out)
{
    for( int i = 0; i < N; i++ )
    {
        for ( int j = 0; j < N; j++ )
        {
            out[i][j] = in[i][j];
        }
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


static inline bool SVD_matrix_isDiagonal(matrix in)
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

  // fall through
  return true;
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
