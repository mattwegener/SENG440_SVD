
#include "SVD_matrix.h"

void SVD_matrix_mul(matrix* matrix1, matrix* matrix2, matrix* result){
  int j,k;
  for(j = 0; j < N; j++){
    for(k = 0; k < N; k++){
      (*result)[j][k] = SVD_matrix_dot(matrix1,matrix2,j,k);
    }
  }
}

void SVD_matrix_trans(matrix* in, matrix* out)
{
  for ( int i = 0; i < N; i++ )
  {
    for ( int j = 0; j < N; j++ )
    {
      (*out)[j][i] = (*in)[i][j];
    }
  }
}

void SVD_matrix_copy(matrix* in, matrix* out)
{
    for( int i = 0; i < N; i++ )
    {
        for ( int j = 0; j < N; j++ )
        {
            (*out)[i][j] = (*in)[i][j];
        }
    }
}

float SVD_matrix_dot(matrix* matrix1, matrix* matrix2, int row1, int col2){
  matrix_elem dot = 0.0;
  int i;
  for(i = 0; i < N; i++){
    dot += (*matrix1)[row1][i] * (*matrix2)[i][col2];
  }
  return dot;
}

bool SVD_matrix_equal(matrix* matrix1, matrix* matrix2)
{
    bool ret = true;
    int i,j;
    for (i = 0; i < N; i++)
    {
      for (j = 0; j < N; j++)
      {
        if ((*matrix1)[i][j] != (*matrix2)[i][j])
        {
          ret = false;
          break;
        }
      }
    }
    return ret;
}

#ifdef TEST
#include <stdio.h>
#include <assert.h>
#define println(...) printf("\n")
static matrix I  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};

static matrix ones  = {{  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },};

static matrix m1 = {{ 1.0,  2.0,  3.0,  4.0,},
                    { 5.0,  6.0,  7.0,  8.0,},
                    { 9.0, 10.0, 11.0, 12.0,},
                    {13.0, 14.0, 15.0, 16.0,},};

static matrix m2 = {{ 1.0,  2.0,  3.0,  4.0,},
                    { 5.0,  6.0,  7.0,  8.0,},
                    { 9.0, 10.0, 11.0, 12.0,},
                    {13.0, 14.0, 15.0, 16.0,},};

// for use as result
static matrix m3 = {{0.0,0.0,0.0,0.0,},
                    {0.0,0.0,0.0,0.0,},
                    {0.0,0.0,0.0,0.0,},
                    {0.0,0.0,0.0,0.0,},}; // zeros

static matrix m_expect = {{90.0, 100.0, 110.0, 120.0,},
                          {202.0, 228.0, 254.0, 280.0,},
                          {314.0, 356.0, 398.0, 440.0,},
                          {426.0, 484.0, 542.0, 600.0,},};

static matrix m1_tran = {{1.0,5.0,9.0,13.0,},{2.0,6.0,10.0,14.0,},{3.0,7.0,11.0,15.0,},{4.0,8.0,12.0,16.0,},};

void SVD_matrix_print(matrix* m)
{
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[0][0], (*m)[0][1], (*m)[0][2], (*m)[0][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[1][0], (*m)[1][1], (*m)[1][2], (*m)[1][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[2][0], (*m)[2][1], (*m)[2][2], (*m)[2][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[3][0], (*m)[3][1], (*m)[3][2], (*m)[3][3]);
}

void TEST_SVD_matrix_equal()
{
  // Test : test SVD_matrix_equal
  assert(SVD_matrix_equal(&m1, &m2));
}
void TEST_SVD_matrix_dot()
{
// Test : test that dot product with identity gives selected element
    assert(SVD_matrix_dot(&I,&m1, 0, 0) == 1.0);
    assert(SVD_matrix_dot(&I,&m1, 0, 1) == 2.0);
    assert(SVD_matrix_dot(&I,&m1, 0, 2) == 3.0);
    assert(SVD_matrix_dot(&I,&m1, 0, 3) == 4.0);

    assert(SVD_matrix_dot(&I,&m1, 1, 0) == 5.0);
    assert(SVD_matrix_dot(&I,&m1, 1, 1) == 6.0);
    assert(SVD_matrix_dot(&I,&m1, 1, 2) == 7.0);
    assert(SVD_matrix_dot(&I,&m1, 1, 3) == 8.0);

    assert(SVD_matrix_dot(&I,&m1, 2, 0) == 9.0);
    assert(SVD_matrix_dot(&I,&m1, 2, 1) == 10.0);
    assert(SVD_matrix_dot(&I,&m1, 2, 2) == 11.0);
    assert(SVD_matrix_dot(&I,&m1, 2, 3) == 12.0);

    assert(SVD_matrix_dot(&I,&m1, 3, 0) == 13.0);
    assert(SVD_matrix_dot(&I,&m1, 3, 1) == 14.0);
    assert(SVD_matrix_dot(&I,&m1, 3, 2) == 15.0);
    assert(SVD_matrix_dot(&I,&m1, 3, 3) == 16.0);
    // reverse order
    assert(SVD_matrix_dot(&m1,&I, 0, 0) == 1.0);
    assert(SVD_matrix_dot(&m1,&I, 0, 1) == 2.0);
    assert(SVD_matrix_dot(&m1,&I, 0, 2) == 3.0);
    assert(SVD_matrix_dot(&m1,&I, 0, 3) == 4.0);

    assert(SVD_matrix_dot(&m1,&I, 1, 0) == 5.0);
    assert(SVD_matrix_dot(&m1,&I, 1, 1) == 6.0);
    assert(SVD_matrix_dot(&m1,&I, 1, 2) == 7.0);
    assert(SVD_matrix_dot(&m1,&I, 1, 3) == 8.0);

    assert(SVD_matrix_dot(&m1,&I, 2, 0) == 9.0);
    assert(SVD_matrix_dot(&m1,&I, 2, 1) == 10.0);
    assert(SVD_matrix_dot(&m1,&I, 2, 2) == 11.0);
    assert(SVD_matrix_dot(&m1,&I, 2, 3) == 12.0);

    assert(SVD_matrix_dot(&m1,&I, 3, 0) == 13.0);
    assert(SVD_matrix_dot(&m1,&I, 3, 1) == 14.0);
    assert(SVD_matrix_dot(&m1,&I, 3, 2) == 15.0);
    assert(SVD_matrix_dot(&m1,&I, 3, 3) == 16.0);

    // Test : test that dot product of [1 1 1 1] with column of matrix gives sum of column
    assert(SVD_matrix_dot(&ones, &m1, 0,0) == 28.0);
    assert(SVD_matrix_dot(&ones, &m1, 0,1) == 32.0);
    assert(SVD_matrix_dot(&ones, &m1, 0,2) == 36.0);
    assert(SVD_matrix_dot(&ones, &m1, 0,3) == 40.0);

    assert(SVD_matrix_dot(&ones, &m1, 1,0) == 28.0);
    assert(SVD_matrix_dot(&ones, &m1, 1,1) == 32.0);
    assert(SVD_matrix_dot(&ones, &m1, 1,2) == 36.0);
    assert(SVD_matrix_dot(&ones, &m1, 1,3) == 40.0);

    assert(SVD_matrix_dot(&ones, &m1, 2,0) == 28.0);
    assert(SVD_matrix_dot(&ones, &m1, 2,1) == 32.0);
    assert(SVD_matrix_dot(&ones, &m1, 2,2) == 36.0);
    assert(SVD_matrix_dot(&ones, &m1, 2,3) == 40.0);

    assert(SVD_matrix_dot(&ones, &m1, 3,0) == 28.0);
    assert(SVD_matrix_dot(&ones, &m1, 3,1) == 32.0);
    assert(SVD_matrix_dot(&ones, &m1, 3,2) == 36.0);
    assert(SVD_matrix_dot(&ones, &m1, 3,3) == 40.0);
    // reverse order
    assert(SVD_matrix_dot(&m1, &ones, 0,0) == 10.0);
    assert(SVD_matrix_dot(&m1, &ones, 0,1) == 10.0);
    assert(SVD_matrix_dot(&m1, &ones, 0,2) == 10.0);
    assert(SVD_matrix_dot(&m1, &ones, 0,3) == 10.0);

    assert(SVD_matrix_dot(&m1, &ones, 1,0) == 26.0);
    assert(SVD_matrix_dot(&m1, &ones, 1,1) == 26.0);
    assert(SVD_matrix_dot(&m1, &ones, 1,2) == 26.0);
    assert(SVD_matrix_dot(&m1, &ones, 1,3) == 26.0);

    assert(SVD_matrix_dot(&m1, &ones, 2,0) == 42.0);
    assert(SVD_matrix_dot(&m1, &ones, 2,1) == 42.0);
    assert(SVD_matrix_dot(&m1, &ones, 2,2) == 42.0);
    assert(SVD_matrix_dot(&m1, &ones, 2,3) == 42.0);

    assert(SVD_matrix_dot(&m1, &ones, 3,0) == 58.0);
    assert(SVD_matrix_dot(&m1, &ones, 3,1) == 58.0);
    assert(SVD_matrix_dot(&m1, &ones, 3,2) == 58.0);
    assert(SVD_matrix_dot(&m1, &ones, 3,3) == 58.0);

    // Test dot product of two arbitrary columns
    assert(SVD_matrix_dot(&m1, &m2, 0, 0) == 90.0);
}

void TEST_SVD_matrix_mul()
{
  // Test Matrix multiplication with identity matrix
    SVD_matrix_mul(&m1, &I, &m3);
    assert(SVD_matrix_equal(&m1, &m3));
    SVD_matrix_mul(&I, &m1, &m3);
    assert(SVD_matrix_equal(&m1, &m3));
    SVD_matrix_mul(&m1,&m2, &m3);
    assert(SVD_matrix_equal(&m3, &m_expect));
}

void TEST_SVD_matrix_trans(void)
{
  SVD_matrix_trans(&m1, &m3);
  assert(SVD_matrix_equal(&m3, &m1_tran));
}

void TEST_SVD_matrix_copy(void)
{
    SVD_matrix_copy(&m1, &m3);
    assert(SVD_matrix_equal(&m1, &m3));
}
#endif
