#include "SVD.h"
#include "SVD_matrix.h"
#include <time.h>
#include <stdio.h>

#define ITER       (10000.0f)

int main(){

#ifdef TIME_TEST
    clock_t start, end;
    double avg_time = 0.0;
#endif

            matrix Min   = {{   31,   77,  -11,   26, },
                {  -42,   14,   79,  -53, },
                {  -68,  -10,   45,   90, },
                {   34,   16,   38,  -19, },};
        matrix Uout  = {{  MATRIX_1,  0,  0,  0, },
                    {  0,  MATRIX_1,  0,  0, },
                    {  0,  0,  MATRIX_1,  0, },
                    {  0,  0,  0,  MATRIX_1, },};
        matrix Vout  = {{  MATRIX_1,  0,  0,  0, },
                    {  0,  MATRIX_1,  0,  0, },
                    {  0,  0,  MATRIX_1,  0, },
                    {  0,  0,  0,  MATRIX_1, },};
        matrix Sout  = {{  MATRIX_1,  0,  0,  0, },
                {  0,  MATRIX_1,  0,  0, },
                {  0,  0,  MATRIX_1,  0, },
                {  0,  0,  0,  MATRIX_1, },};
    
    SVD_matrix_int_to_fix(Min);
    // run 1 million times for profiling
    for (unsigned int i = 0; i < ITER; i++)
    {
#ifdef TIME_TEST
        start = clock();
#endif
        SVD_decompose(Min, Uout, Sout, Vout);
#ifdef TIME_TEST
        end = clock();
        avg_time += (double)(end - start);
#endif
    }

#ifdef TIME_TEST
    avg_time = avg_time / ITER;
    printf("Average time taken (10000 tries): %f\n", avg_time);
#endif
    return 0;
}
