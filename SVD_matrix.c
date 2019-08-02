
#include "SVD_matrix.h"
#include <stdio.h>

void SVD_matrix_mul(matrix matrix1, matrix matrix2, matrix result){
  int j,k;
  for(j = 0; j < N; j++){
    for(k = 0; k < N; k++){
      result[j][k] = SVD_matrix_dot(matrix1,matrix2,j,k);
    }
  }
}

void SVD_matrix_trans(matrix in, matrix out)
{
  for ( int i = 0; i < N; i++ )
  {
    for ( int j = 0; j < N; j++ )
    {
      out[j][i] = in[i][j];
    }
  }
}

void SVD_matrix_copy(matrix in, matrix out)
{
    for( int i = 0; i < N; i++ )
    {
        for ( int j = 0; j < N; j++ )
        {
            out[i][j] = in[i][j];
        }
    }
}

matrix_elem SVD_matrix_dot(matrix matrix1, matrix matrix2, int row1, int col2){
    matrix_elem dot = 0;
    int i;
    for(i = 0; i < N; i++){
        matrix_elem Ftemp = FMUL(matrix1[row1][i],matrix2[i][col2],Q);
        dot = FADD(dot,Ftemp);
    }
    return dot;
}

bool SVD_matrix_equal(matrix matrix1, matrix matrix2)
{
    bool ret = true;
    int i,j;
    for (i = 0; i < N; i++)
    {
      for (j = 0; j < N; j++)
      {
        if (matrix1[i][j] != matrix2[i][j])
        {
          ret = false;
          break;
        }
      }
    }
    return ret;
}


bool SVD_matrix_isDiagonal(matrix in)
{
  for (int i = 0; i < N; i++)
  {
    for (int j = 0; j < N; j++)
    {
      if (i != j)
      {
        if (SVD_abs(in[i][j]) > 0);
          return false;
      }
    }
  }

  // fall through
  return true;
}

void SVD_matrix_int_to_fix(matrix m, int q){
    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            m[i][j] = FCONV(m[i][j],0,Q);
        }
    }
}
void SVD_matrix_fix_to_int(matrix m, int q){
    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            m[i][j] = FCONV(m[i][j],Q,0);
        }
    }
}

void SVD_matrix_print(matrix m)
{
  printf("%d %d %d %d\n", m[0][0], m[0][1], m[0][2], m[0][3]);
  printf("%d %d %d %d\n", m[1][0], m[1][1], m[1][2], m[1][3]);
  printf("%d %d %d %d\n", m[2][0], m[2][1], m[2][2], m[2][3]);
  printf("%d %d %d %d\n", m[3][0], m[3][1], m[3][2], m[3][3]);
}

#ifdef TEST
#include <stdio.h>
#include <assert.h>
#define println(...) printf("\n")
static matrix I  = {{  FIX_1,  0,       0,      0, },
                    {  0,      FIX_1,   0,      0, },
                    {  0,      0,       FIX_1,  0, },
                    {  0,      0,       0,      FIX_1, },};
static matrix ones  = {{  FIX_1,  FIX_1,  FIX_1,  FIX_1, },
                       {  FIX_1,  FIX_1,  FIX_1,  FIX_1, },
                       {  FIX_1,  FIX_1,  FIX_1,  FIX_1, },
                       {  FIX_1,  FIX_1,  FIX_1,  FIX_1, },};

static matrix m1 = {{ 1,  2,  3,  4,},
                    { 5,  6,  7,  8,},
                    { 9, 10, 11, 12,},
                    {13, 14, 15, 16,},};

static matrix m2 = {{ 1,  2,  3,  4,},
                    { 5,  6,  7,  8,},
                    { 9, 10, 11, 12,},
                    {13, 14, 15, 16,},};

// for use as result
static matrix m3 = {{0,0,0,0,},
                    {0,0,0,0,},
                    {0,0,0,0,},
                    {0,0,0,0,},}; // zeros

static matrix m_expect = {{90, 100, 110, 120,},
                          {202, 228, 254, 280,},
                          {314, 356, 398, 440,},
                          {426, 484, 542, 600,},};

static matrix m1_tran = {{1,5,9,13,},{2,6,10,14,},{3,7,11,15,},{4,8,12,16,},};

void TEST_SVD_matrix_equal()
{
  // Test : test SVD_matrix_equal
  assert(SVD_matrix_equal(m1, m2));
}
void TEST_SVD_matrix_dot()
{
// Test : test that dot product with identity gives selected element
    assert(SVD_matrix_dot(I,m1, 0, 0) == 1.0);
    assert(SVD_matrix_dot(I,m1, 0, 1) == 2.0);
    assert(SVD_matrix_dot(I,m1, 0, 2) == 3.0);
    assert(SVD_matrix_dot(I,m1, 0, 3) == 4.0);

    assert(SVD_matrix_dot(I,m1, 1, 0) == 5.0);
    assert(SVD_matrix_dot(I,m1, 1, 1) == 6.0);
    assert(SVD_matrix_dot(I,m1, 1, 2) == 7.0);
    assert(SVD_matrix_dot(I,m1, 1, 3) == 8.0);

    assert(SVD_matrix_dot(I,m1, 2, 0) == 9.0);
    assert(SVD_matrix_dot(I,m1, 2, 1) == 10.0);
    assert(SVD_matrix_dot(I,m1, 2, 2) == 11.0);
    assert(SVD_matrix_dot(I,m1, 2, 3) == 12.0);

    assert(SVD_matrix_dot(I,m1, 3, 0) == 13.0);
    assert(SVD_matrix_dot(I,m1, 3, 1) == 14.0);
    assert(SVD_matrix_dot(I,m1, 3, 2) == 15.0);
    assert(SVD_matrix_dot(I,m1, 3, 3) == 16.0);
    // reverse order
    assert(SVD_matrix_dot(m1,I, 0, 0) == 1.0);
    assert(SVD_matrix_dot(m1,I, 0, 1) == 2.0);
    assert(SVD_matrix_dot(m1,I, 0, 2) == 3.0);
    assert(SVD_matrix_dot(m1,I, 0, 3) == 4.0);

    assert(SVD_matrix_dot(m1,I, 1, 0) == 5.0);
    assert(SVD_matrix_dot(m1,I, 1, 1) == 6.0);
    assert(SVD_matrix_dot(m1,I, 1, 2) == 7.0);
    assert(SVD_matrix_dot(m1,I, 1, 3) == 8.0);

    assert(SVD_matrix_dot(m1,I, 2, 0) == 9.0);
    assert(SVD_matrix_dot(m1,I, 2, 1) == 10.0);
    assert(SVD_matrix_dot(m1,I, 2, 2) == 11.0);
    assert(SVD_matrix_dot(m1,I, 2, 3) == 12.0);

    assert(SVD_matrix_dot(m1,I, 3, 0) == 13.0);
    assert(SVD_matrix_dot(m1,I, 3, 1) == 14.0);
    assert(SVD_matrix_dot(m1,I, 3, 2) == 15.0);
    assert(SVD_matrix_dot(m1,I, 3, 3) == 16.0);

    // Test : test that dot product of [1 1 1 1] with column of matrix gives sum of column
    assert(SVD_matrix_dot(ones, m1, 0,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 0,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 0,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 0,3) == 40.0);

    assert(SVD_matrix_dot(ones, m1, 1,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 1,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 1,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 1,3) == 40.0);

    assert(SVD_matrix_dot(ones, m1, 2,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 2,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 2,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 2,3) == 40.0);

    assert(SVD_matrix_dot(ones, m1, 3,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 3,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 3,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 3,3) == 40.0);
    // reverse order
    assert(SVD_matrix_dot(m1, ones, 0,0) == 10.0);
    assert(SVD_matrix_dot(m1, ones, 0,1) == 10.0);
    assert(SVD_matrix_dot(m1, ones, 0,2) == 10.0);
    assert(SVD_matrix_dot(m1, ones, 0,3) == 10.0);

    assert(SVD_matrix_dot(m1, ones, 1,0) == 26.0);
    assert(SVD_matrix_dot(m1, ones, 1,1) == 26.0);
    assert(SVD_matrix_dot(m1, ones, 1,2) == 26.0);
    assert(SVD_matrix_dot(m1, ones, 1,3) == 26.0);

    assert(SVD_matrix_dot(m1, ones, 2,0) == 42.0);
    assert(SVD_matrix_dot(m1, ones, 2,1) == 42.0);
    assert(SVD_matrix_dot(m1, ones, 2,2) == 42.0);
    assert(SVD_matrix_dot(m1, ones, 2,3) == 42.0);

    assert(SVD_matrix_dot(m1, ones, 3,0) == 58.0);
    assert(SVD_matrix_dot(m1, ones, 3,1) == 58.0);
    assert(SVD_matrix_dot(m1, ones, 3,2) == 58.0);
    assert(SVD_matrix_dot(m1, ones, 3,3) == 58.0);

    // Test dot product of two arbitrary columns
    SVD_matrix_int_to_fix(m1, Q);
    SVD_matrix_int_to_fix(m2, Q);
    SVD_matrix_int_to_fix(m_expect, Q);
    assert(SVD_matrix_dot(m1, m2, 0, 0) == TOFIX(90.0, Q));
}

void TEST_SVD_matrix_mul()
{
  // Test Matrix multiplication with identity matrix
    SVD_matrix_mul(m1, I, m3);
    assert(SVD_matrix_equal(m1, m3));
    SVD_matrix_mul(I, m1, m3);
    assert(SVD_matrix_equal(m1, m3));
    SVD_matrix_mul(m1,m2, m3);
    assert(SVD_matrix_equal(m3, m_expect));
}

void TEST_SVD_matrix_trans(void)
{
  SVD_matrix_trans(m1, m3);
  assert(SVD_matrix_equal(m3, m1_tran));
}

void TEST_SVD_matrix_copy(void)
{
    SVD_matrix_copy(m1, m3);
    assert(SVD_matrix_equal(m1, m3));
}

void TEST_SVD_matrix_isDiagonal(void)
{
    assert(SVD_matrix_isDiagonal(I));
    assert(!SVD_matrix_isDiagonal(m1));
}



#endif
