
#include <stdio.h>
#include <assert.h>
#include "SVD_matrix.h"
#include "SVD_math.h"
#include "SVD.h"

/* Compile this with compiler flag "-DTEST" */

int main(void)
{
    TEST_SVD_math();
    TEST_SVD_matrix_equal();
    TEST_SVD_matrix_dot();
    TEST_SVD_matrix_mul();
    TEST_SVD_decompose();
    // if we get here, we have finished the tests.
    printf("All tests succeeded. Exiting...\n\n");
    return 0;
}