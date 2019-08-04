
#include "SVD_matrix.h"

#ifdef TEST
#include <stdio.h>
#include <assert.h>
#define println(...) printf("\n")

void SVD_matrix_print(matrix m)
{
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[0][0], m[0][1], m[0][2], m[0][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[1][0], m[1][1], m[1][2], m[1][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[2][0], m[2][1], m[2][2], m[2][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[3][0], m[3][1], m[3][2], m[3][3]);
}


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

void TEST_SVD_matrix_equal()
{
  // Test : test SVD_matrix_equal
  assert(SVD_matrix_equal(m1, m2));
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
