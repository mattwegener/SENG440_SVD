
#include "SVD_matrix.h"

#ifdef TEST
#include <stdio.h>
#include <assert.h>
#define println(...) printf("\n")

void SVD_matrix_print(matrix m)
{
  printf("%10.5f %10.5f %10.5f %10.5f\n", TOFLT(m[0][0], MATRIXQ), TOFLT(m[0][1], MATRIXQ), TOFLT(m[0][2], MATRIXQ), TOFLT(m[0][3],MATRIXQ));
  printf("%10.5f %10.5f %10.5f %10.5f\n", TOFLT(m[1][0], MATRIXQ), TOFLT(m[1][1], MATRIXQ), TOFLT(m[1][2], MATRIXQ), TOFLT(m[1][3],MATRIXQ));
  printf("%10.5f %10.5f %10.5f %10.5f\n", TOFLT(m[2][0], MATRIXQ), TOFLT(m[2][1], MATRIXQ), TOFLT(m[2][2], MATRIXQ), TOFLT(m[2][3],MATRIXQ));
  printf("%10.5f %10.5f %10.5f %10.5f\n", TOFLT(m[3][0], MATRIXQ), TOFLT(m[3][1], MATRIXQ), TOFLT(m[3][2], MATRIXQ), TOFLT(m[3][3],MATRIXQ));
}

void SVD_matrix_int_to_fix(matrix m){
    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            m[i][j] = m[i][j] << MATRIXQ;
        }
    }
}
void SVD_matrix_fix_to_int(matrix m){
    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            m[i][j] = (m[i][j] + MATRIX_ROUND_BIT) >> MATRIXQ;;
        }
    }
}


static matrix I  = {{  MATRIX_1,  0,  0,  0, },
                    {  0,  MATRIX_1,  0,  0, },
                    {  0,  0,  MATRIX_1,  0, },
                    {  0,  0,  0,  MATRIX_1, },};

static matrix ones  = {{  MATRIX_1,  MATRIX_1,  MATRIX_1,  MATRIX_1, },
                       {  MATRIX_1,  MATRIX_1,  MATRIX_1,  MATRIX_1, },
                       {  MATRIX_1,  MATRIX_1,  MATRIX_1,  MATRIX_1, },
                       {  MATRIX_1,  MATRIX_1,  MATRIX_1,  MATRIX_1, },};

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

static matrix m_expect = {{ 90, 100, 110, 120,},
                          {202, 228, 254, 280,},
                          {314, 356, 398, 440,},
                          {426, 484, 542, 600,},};

static matrix m1_tran = {{1,5,9,13,},{2,6,10,14,},{3,7,11,15,},{4,8,12,16,},};

void TEST_SVD_matrix_equal()
{
  SVD_matrix_int_to_fix(m1);
  SVD_matrix_int_to_fix(m2);
  SVD_matrix_int_to_fix(m_expect);
  SVD_matrix_int_to_fix(m1_tran);
  // Test : test SVD_matrix_equal
  assert(SVD_matrix_equal(m1, m2));
}

void TEST_SVD_matrix_mul()
{
  // Test Matrix multiplication with identity matrix
    SVD_matrix_mul(m1, I, m3);
    SVD_matrix_print(m3);
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
