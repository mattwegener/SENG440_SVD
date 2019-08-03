
#include <math.h>
#include <time.h>
#include <stdlib.h>
#include <stdio.h>



int main(void)
{
    float x, y;
    double avg_cpu_sin, avg_cpu_cos, avg_cpu_atan;
    clock_t start, end;

    srand(time(NULL));

    printf("//////////////// Profile Log for trigonometric functions ///////////////\n\n");

    for (int i = 0; i < 1000; i++)
    {
        x = ((float)rand() / (float)RAND_MAX) * M_PI;
        
        start = clock();
        y = sinf(x);
        end = clock();

        avg_cpu_sin += (double)(end - start);
    }

    avg_cpu_sin = avg_cpu_sin / 1000.0;
    printf("Average CPU time for math.h sinf: %f\n", avg_cpu_sin);

    for (int i = 0; i < 1000; i++)
    {
        x = ((float)rand() / (float)RAND_MAX) * M_PI;
        
        start = clock();
        y = cosf(x);
        end = clock();

        avg_cpu_cos += (double)(end - start);
    }

    avg_cpu_cos = avg_cpu_cos / 1000.0;
    printf("Average CPU time for math.h cosf: %f\n", avg_cpu_cos);

    for (int i = 0; i < 1000; i++)
    {
        x = ((float)rand() / (float)RAND_MAX);
        
        start = clock();
        y = atanf(x);
        end = clock();

        avg_cpu_atan += (double)(end - start);
    }

    avg_cpu_atan = avg_cpu_atan / 1000.0;
    printf("Average CPU time for math.h atanf: %f\n", avg_cpu_atan);
}