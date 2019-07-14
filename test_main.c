
#include <stdio.h>
#include <assert.h>
#include "SVD_matrix.h"

#define println(...) printf("\n")

int main(void)
{
    matrix I  = {{  1.0,  0.0,  0.0,  0.0, },
                 {  0.0,  1.0,  0.0,  0.0, },
                 {  0.0,  0.0,  1.0,  0.0, },
                 {  0.0,  0.0,  0.0,  1.0, },};
    
    matrix ones  = {{  1.0,  1.0,  1.0,  1.0, },
                    {  1.0,  1.0,  1.0,  1.0, },
                    {  1.0,  1.0,  1.0,  1.0, },
                    {  1.0,  1.0,  1.0,  1.0, },};

    matrix m1 = {{ 1.0,  2.0,  3.0,  4.0,},
                 { 5.0,  6.0,  7.0,  8.0,},
                 { 9.0, 10.0, 11.0, 12.0,},
                 {13.0, 14.0, 15.0, 16.0,},};

    matrix m2 = {{ 1.0,  2.0,  3.0,  4.0,},
                 { 5.0,  6.0,  7.0,  8.0,},
                 { 9.0, 10.0, 11.0, 12.0,},
                 {13.0, 14.0, 15.0, 16.0,},};
    
    // for use as result
    matrix m3 = {{0.0,0.0,0.0,0.0,},
                 {0.0,0.0,0.0,0.0,},
                 {0.0,0.0,0.0,0.0,},
                 {0.0,0.0,0.0,0.0,},}; // zeros

    matrix m_expect = { {90.0, 100.0, 110.0, 120.0,},
                        {202.0, 228.0, 254.0, 280.0,},
                        {314.0, 356.0, 398.0, 440.0,},
                        {426.0, 484.0, 542.0, 600.0,},};

    // Test : SVD_matrix_print
    SVD_matrix_print(&I);
    println();
    SVD_matrix_print(&m1);
    println();
    // Test : test SVD_matrix_equal
    assert(SVD_matrix_equal(&m1, &m2));
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

    // Test Matrix multiplication with identity matrix
    SVD_matrix_mul(&m1, &I, &m3);
    assert(SVD_matrix_equal(&m1, &m3));
    SVD_matrix_mul(&I, &m1, &m3);
    assert(SVD_matrix_equal(&m1, &m3));
    SVD_matrix_mul(&m1,&m2, &m3);
    assert(SVD_matrix_equal(&m3, &m_expect));
    // if we get here, we have finished the tests.
    printf("All tests succeeded. Exiting...\n\n");
    return 0;
}