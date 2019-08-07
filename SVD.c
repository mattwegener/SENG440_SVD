
#include "SVD.h"

#ifdef TEST
    #include <stdio.h>
#endif

static matrix I  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};


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

    SVD_matrix_copy(M,S);
    SVD_matrix_copy(I, U);
    SVD_matrix_copy(I, V); // V is the transpose during the algorithm, has to be tranposed at the end

    //matrix_elem pair_m[2][2];
    /*
    do pairs:
    1-2, 1-3, 1-4
    2-3, 2-4
    3-4
    */
    //rows: j
    //cols: k
    matrix_elem num1 = 0.0;
    matrix_elem num2 = 0.0;
    matrix_elem den1 = 0.0;
    matrix_elem den2 = 0.0;
    matrix_elem sum = 0.0;
    matrix_elem diff = 0.0;
    matrix_elem qR = 0.0;
    matrix_elem qL = 0.0;

    #ifdef TEST
        SVD_matrix_print(S);
        printf("\n");
        int sweeps = 1;
    #endif
    
    matrix Temp;

    while(!SVD_matrix_isDiagonal(S))
    {
        #ifdef TEST
            printf("///////////////// SWEEP %d///////////////////\n\n", sweeps);
        #endif

        for(int j = 0; j < N-1; j++)
        {
            for(int k = j+1; k < N; k++)
            {
                // reload temp 
                SVD_matrix_copy(I, Temp);
                //calculate rotation angles
                num1 = S[k][j] + S[j][k];
                num2 = S[k][j] - S[j][k];
                den1 = S[k][k] - S[j][j];
                den2 = S[k][k] + S[j][j];

                sum = SVD_atan( num1, den1 );
                diff = SVD_atan( num2, den2 );
                qL = (sum - diff)/2;
                qR = sum - qL;
                
                //Calculate left rotation matrix Uij
                Temp[j][j] = SVD_cos(qL);
                Temp[j][k] = -1*SVD_sin(qL);
                Temp[k][j] = SVD_sin(qL);
                Temp[k][k] = SVD_cos(qL);

                // M' = Uij * M
                SVD_matrix_in_place_left_mul(Temp, S);
                // U' = U * Uij^T
                SVD_matrix_in_place_right_mul_by_trans(U, Temp);


                // reload temp 
                SVD_matrix_copy(I, Temp);

                // calculate right rotation matrix Vij
                Temp[j][j] = SVD_cos(qR);
                Temp[j][k] = -1*SVD_sin(qR);
                Temp[k][j] = SVD_sin(qR);
                Temp[k][k] = SVD_cos(qR);

                // M'' = M' * Vij^T
                SVD_matrix_in_place_right_mul_by_trans(S, Temp);
                // V'^T = Vij * V^T
                SVD_matrix_in_place_left_mul(Temp, V);
                #ifdef TEST
                printf("Pair %d -- %d\n\n", j + 1,k + 1);
                SVD_matrix_print(S);
                printf("\n");
                #endif
            } //end for
        }//end for
        #ifdef TEST
        sweeps++;
        #endif
    }//end while

    SVD_matrix_in_place_trans(V);

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
    // TODO
    SVD_decompose(Min, Uout, Sout, Vout);
    
    printf("\n/////////////// SVD DECOMP RESULT ////////////\n");
    printf("\nINPUT ----------------------------------------\n");
    printf("\nM = \n");
    SVD_matrix_print(Min);
    printf("\nOUTPUT ---------------------------------------\n");
    printf("\nU = \n");
    SVD_matrix_print(Uout);
    printf("\nS = \n");
    SVD_matrix_print(Sout);
    printf("\nV = \n");
    SVD_matrix_print(Vout);
    printf("\n");
    assert(SVD_matrix_equal(Sout, S_expect));
}
#endif
