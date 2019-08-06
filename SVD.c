
#include "SVD.h"

#ifdef TEST
#include <stdio.h>
#endif

static matrix I  = {{  MATRIX_1,  0,  0,  0, },
                    {  0,  MATRIX_1,  0,  0, },
                    {  0,  0,  MATRIX_1,  0, },
                    {  0,  0,  0,  MATRIX_1, },};

// INPUT: M in integer format
// Precondition: no integers larger than 127
// Precondition: in Q8 format
void SVD_decompose(matrix M /*IN*/, matrix U /*OUT*/, matrix S /*OUT*/, matrix V /*OUT*/ )
{

    // TODO
    /*
    Per iteration:
    -The orthogonal matrix U12 is built with the left rotation angle, ql ,12
    -The orthogonal matrix V12 is built with the right rotation angle, qr ,12
    -The left and right rotations are applied to M to give M′
    -The matrices U12 and V12 are incorporated into U and V to give U′ and V′
    -U, M, and V are updated with U′, M′, and V′, to be used in the next iteration

    equation to implement: U*M*Vt = U*U12t*U12*M*V12t*V12*Vt
    U' = U*U12t
    M' = U12*M*V12t
    V' = V12*Vt
    */

    matrix Vt;
    matrix Up = {0};
    matrix Mp = {0};
    matrix Vtp = {0};
    matrix U_pair, V_pair, U_pair_trans, V_pair_trans;

    SVD_matrix_copy(M,S);
    SVD_matrix_copy(I, U);
    SVD_matrix_copy(I, Vt);

    //matrix_elem pair_m[2][2];
    /*
    do pairs:
    1-2, 1-3, 1-4
    2-3, 2-4
    3-4
    */
    //rows: j
    //cols: k
    int32_t num1 = 0.0;
    int32_t num2 = 0.0;
    int32_t den1 = 0.0;
    int32_t den2 = 0.0;
    int32_t sum = 0;
    int32_t diff = 0;
    int32_t qR = 0;
    int32_t qL = 0;

    #ifdef TEST
        SVD_matrix_print(S);
        printf("\n");
    #endif
    int sweeps = 1;
    while(!SVD_matrix_isDiagonal(S))
    {
        #ifdef TEST
            printf("///////////////// SWEEP %d///////////////////\n\n", sweeps);
        #endif

        for(int j = 0; j < N-1; j++)
        {
            for(int k = j+1; k < N; k++)
            {
                
                // reload all matrices to identity
                SVD_matrix_copy(I,Up);
                SVD_matrix_copy(I,Mp);
                SVD_matrix_copy(I,Vtp);
                SVD_matrix_copy(I,U_pair);
                SVD_matrix_copy(I,V_pair);
                SVD_matrix_copy(I,U_pair_trans); 
                SVD_matrix_copy(I,V_pair_trans);
                
                //calculate rotation angles
                // these are all in MATRIXQ format, no shifting needed
                num1 = S[k][j] + S[j][k];
                num2 = S[k][j] - S[j][k];
                den1 = S[k][k] - S[j][j];
                den2 = S[k][k] + S[j][j];

                /////////// FIXED POINT //////////////
                // putting these in Q14 for the arctan
                int32_t temp_num = num1 << (ATANQ - MATRIXQ);
                int32_t temp_den = den1 << (ATANQ - MATRIXQ);
                
                sum = SVD_atan( temp_num, temp_den );
                
                temp_num = num2 << (ATANQ - MATRIXQ);
                temp_den = den2 << (ATANQ - MATRIXQ);
                diff = SVD_atan( temp_num, temp_den );
                
                //printf("sum = %f, diff = %f\n,", TOFLT(sum, ATANQ), TOFLT(diff, ATANQ));
                // sum and diff both in ATANQ format
                qL = ((sum - diff))/ 2; // TODO: add 1 for the rounding bit // this can be reduced to shift
                qR = sum - qL;

                /*
                printf("Before:\n");
                printf("ql = %d, qR = %d\n\n", qL, qR );
                printf("-SINCOS_PI = %d\n\n", -SINCOS_PI);
                printf("qL = %f, qR = %f\n\n", TOFLT(qL, ATANQ), TOFLT(qR, ATANQ));
                printf("-SINCOS_PI = %f\n\n", TOFLT(-SINCOS_PI, SINCOS_Q1));
                */
                // convert to sin and cosine argument format
                //qL and qR are both in Q14... make them Q12 with rounding
                qL = (qL + ATAN_TO_SINCOS_ROUND_BIT) >> ATAN_TO_SINCOS_SHIFT;
                qR = (qR + ATAN_TO_SINCOS_ROUND_BIT) >> ATAN_TO_SINCOS_SHIFT;

                /*
                printf("After:\n");
                printf("ql = %d, qR = %d\n\n", qL, qR );
                printf("-SINCOS_PI = %d\n\n", -SINCOS_PI);
                printf("qL = %f, qR = %f\n\n", TOFLT(qL, SINCOS_Q1), TOFLT(qR, SINCOS_Q1));
                printf("-SINCOS_PI = %f\n\n", TOFLT(-SINCOS_PI, SINCOS_Q1));
                */
                

                //Create U V rotation matrices for mulitplaction
                // need to shift down by 2, do some rounding
                U_pair[j][j] =  ( (SVD_cos(qL) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);
                U_pair[j][k] = -( (SVD_sin(qL) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);
                U_pair[k][j] =  ( (SVD_sin(qL) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);
                U_pair[k][k] =  ( (SVD_cos(qL) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);

                V_pair[j][j] =  ( (SVD_cos(qR) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);
                V_pair[j][k] = -( (SVD_sin(qR) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);
                V_pair[k][j] =  ( (SVD_sin(qR) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);
                V_pair[k][k] =  ( (SVD_cos(qR) + SINCOS_TO_MATRIX_ROUND_BIT) >> SINCOS_TO_MATRIX_SHIFT);

                /////////////////////////////////////////////////////

                //Transpose matrices
                SVD_matrix_trans(U_pair, U_pair_trans);
                SVD_matrix_trans(V_pair, V_pair_trans);

                //DO algorithm multiplaction
                SVD_matrix_mul(U, U_pair_trans, Up);
                SVD_matrix_mul(V_pair, Vt, Vtp);

                SVD_matrix_mul(U_pair,S,Mp); //U pair * S -> M'
                SVD_matrix_mul(Mp,V_pair_trans,S); //M' * V pair t -> S

                //Update S, U, V, Vt
                SVD_matrix_copy(Vtp,Vt);
                SVD_matrix_trans(Vt,V);
                SVD_matrix_copy(Up,U);

                #ifdef TEST
                printf("Pair %d -- %d\n\n", j + 1,k + 1);
                SVD_matrix_print(S);
                printf("\n");
                #endif
            } //end for
        }//end for
	    if (sweeps == 4)
        {
            #ifdef TEST
            fflush(stdout);
            #endif
            return;
        }
	    sweeps++;
    }//end while

    // matrix is diagonalized, now normalize
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            // set to absolute value
            S[i][j] = SVD_abs(S[i][j]);
            // make anything with smaller than the epsilon => 0.0
            if (S[i][j] < EPS)
            {
                S[i][j] = 0.0;
            }
        }
    }
    #ifdef TEST
    fflush(stdout);
    #endif
}


#ifdef TEST
#include <assert.h>
#include <stdio.h>
static matrix Min  = {{  31.0,  77.0,  -11.0,  26.0, },
                    {  -42.0,  14.0, 79.0,  -53.0, },
                    {  -68.0,  -10.0,  45.0, 90.0, },
                    {  34.0,  16.0,  38.0,  -19.0, },};
static matrix Uout  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};
static matrix Vout  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};
static matrix Sout  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};

static matrix S_expect = {{ 85.57032,   0.00000,    0.00000,    0.00000,  },
                          { 0.00000,  126.42876,    0.00000,    0.00000,  },
                          { 0.00000,    0.00000,  110.90500,    0.00000,  },
                          { 0.00000,    0.00000,    0.00000,   34.00837,  },};

void TEST_SVD_decompose(void)
{
    SVD_matrix_int_to_fix(Min);
    SVD_matrix_int_to_fix(Uout);
    SVD_matrix_int_to_fix(Vout);
    SVD_matrix_int_to_fix(Sout);
    // TODO
    SVD_decompose(Min, Uout, Sout, Vout);
    /*printf("\nUout = \n");
    SVD_matrix_print(Uout);
    printf("\nSout = \n");
    SVD_matrix_print(Sout);
    printf("\nVout = \n");
    SVD_matrix_print(Vout);*/

    assert(SVD_matrix_equal(Sout, S_expect));
}
#endif
