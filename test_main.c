
#include <stdio.h>
#include <assert.h>
#include "SVD_matrix.h"

/* Compile this with compiler flag "-DTESTING" */

int main(void)
{
    TEST_SVD_matrix_equal();
    TEST_SVD_matrix_dot();
    TEST_SVD_matrix_mul();
    // if we get here, we have finished the tests.
    printf("All tests succeeded. Exiting...\n\n");
    return 0;
}