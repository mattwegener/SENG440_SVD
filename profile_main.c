#include "SVD.h"
#include <time.h>
#include <stdio.h>

#define ITER       (10000.0f)

matrix Min   = {{  31.0,  77.0,  -11.0,  26.0, },
                {  -42.0,  14.0, 79.0,  -53.0, },
                {  -68.0,  -10.0,  45.0, 90.0, },
                {  34.0,  16.0,  38.0,  -19.0, },};
matrix Uout  = {{  1.0,  0.0,  0.0,  0.0, },
                {  0.0,  1.0,  0.0,  0.0, },
                {  0.0,  0.0,  1.0,  0.0, },
                {  0.0,  0.0,  0.0,  1.0, },};
matrix Vout  = {{  1.0,  0.0,  0.0,  0.0, },
                {  0.0,  1.0,  0.0,  0.0, },
                {  0.0,  0.0,  1.0,  0.0, },
                {  0.0,  0.0,  0.0,  1.0, },};
matrix Sout  = {{  1.0,  0.0,  0.0,  0.0, },
                {  0.0,  1.0,  0.0,  0.0, },
                {  0.0,  0.0,  1.0,  0.0, },
                {  0.0,  0.0,  0.0,  1.0, },};


int main(){

#ifdef TIME_TEST
    clock_t start, end;
    double avg_time = 0.0;
#endif
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
