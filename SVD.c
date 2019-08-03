
#include "SVD.h"

static matrix I  = {{  FIX_1,  0,       0,      0, },
                    {  0,      FIX_1,   0,      0, },
                    {  0,      0,       FIX_1,  0, },
                    {  0,      0,       0,      FIX_1, },};  

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
    matrix_elem num1 = 0;
    matrix_elem num2 = 0;
    matrix_elem den1 = 0;
    matrix_elem den2 = 0;
    matrix_elem sum = 0;
    matrix_elem diff = 0;
    matrix_elem qR = 0;
    matrix_elem qL = 0;

    int sweeps = 0;
    printf("START ALGO\n");

    while(!SVD_matrix_isDiagonal(S))
    {
        printf("START SWEEP %d\n", sweeps);
        printf("\n\n");
        for(int j = 0; j < N-1; j++)
        {
            for(int k = j+1; k < N; k++)
            {
                printf("Pair %d -- %d\n", j, k);
                SVD_matrix_print(S);
                printf("\n\n");
                // reload all matrices to identity
                SVD_matrix_copy(I,Up);
                SVD_matrix_copy(I,Mp);
                SVD_matrix_copy(I,Vtp);
                SVD_matrix_copy(I,U_pair);
                SVD_matrix_copy(I,V_pair);
                SVD_matrix_copy(I,U_pair_trans);
                SVD_matrix_copy(I,V_pair_trans);

                printf("break 1\n");
                //calculate rotation angles
                num1 = FADD(S[k][j], S[j][k]);
                num2 = FSUB(S[k][j], S[j][k]);
                den1 = FSUB(S[k][k], S[j][j]);
                den2 = FADD(S[k][k], S[j][j]);

                printf("kj = %d, jk = %d, num1 = kj + jk = %d\n", TOINT(S[k][j],Q), TOINT(S[j][k],Q), TOINT(num1,Q));
                printf("kj = %d, jk = %d, num2 = kj - jk = %d\n", TOINT(S[k][j],Q), TOINT(S[j][k],Q), TOINT(num2,Q));
                printf("kk = %d, jj = %d, den1 = kk - jj = %d\n", TOINT(S[k][k],Q), TOINT(S[j][j],Q), TOINT(den1,Q));
                printf("kk = %d, jj = %d, den2 = kk + jj = %d\n", TOINT(S[k][k],Q), TOINT(S[j][j],Q), TOINT(den2,Q));

                sum = SVD_atan( num1, den1 );
                printf("sum = %f\n", TOFLT(sum, Q));
                diff = SVD_atan( num2, den2 );
                printf("diff = %f\n", TOFLT(diff, Q));
                qL = FDIVI(FSUB(sum, diff),2);
                printf("ql = %f\n", TOFLT(qL, Q));
                qR = FSUB(sum, qL);
                printf("qR = %f\n", TOFLT(qR, Q));

                //Create U V rotation matrices for mulitplaction
                U_pair[j][j] = SVD_cos(qL);
                U_pair[j][k] = FMULI(SVD_sin(qL), -1);
                U_pair[k][j] = SVD_sin(qL);
                U_pair[k][k] = SVD_cos(qL);

                printf("break 4\n");
                V_pair[j][j] = SVD_cos(qR);
                V_pair[j][k] = FMULI(SVD_sin(qR),-1);
                V_pair[k][j] = SVD_sin(qR);
                V_pair[k][k] = SVD_cos(qR);

                printf("break 5\n");
                //Transpose matrices
                SVD_matrix_trans(U_pair, U_pair_trans);
                SVD_matrix_trans(V_pair, V_pair_trans);

                printf("break 6\n");
                //DO algorithm multiplaction
                SVD_matrix_mul(U, U_pair_trans, Up);
                SVD_matrix_mul(V_pair, Vt, Vtp);
                
                printf("break 7\n");
                SVD_matrix_mul(U_pair,S,Mp); //U pair * S -> M'
                SVD_matrix_mul(Mp,V_pair_trans,S); //M' * V pair t -> S

                printf("break 8\n");
                //Update S, U, V, Vt
                SVD_matrix_copy(Vtp,Vt);
                SVD_matrix_trans(Vt,V);
                SVD_matrix_copy(Up,U);

                printf("break 9\n\n");
            } //end for
        }//end for

        printf("END SWEEP\n");
        if (sweeps == 5) return;
        sweeps++;
    }//end while

    printf("END ALGO\n");
    SVD_matrix_print(S);
    printf("\n\n");

    // matrix is diagonalized, now normalize
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            // set to absolute value
            S[i][j] = SVD_abs(S[i][j]);
        }
    }
}


#ifdef TEST
#include <assert.h>
#include <stdio.h>
static matrix Min  =   {{  31,  77,  -11,  26, },
                        {  -42,  14, 79,  -53, },
                        {  -68,  -10,  45, 90, },
                        {  34,  16,  38,  -19, },};

static matrix Uout  =  {{  1,  0,  0,  0, },
                        {  0,  1,  0,  0, },
                        {  0,  0,  1,  0, },
                        {  0,  0,  0,  1, },};

static matrix Vout  =  {{  1,  0,  0,  0, },
                        {  0,  1,  0,  0, },
                        {  0,  0,  1,  0, },
                        {  0,  0,  0,  1, },};

static matrix Sout  =  {{  1,  0,  0,  0, },
                        {  0,  0,  1,  0, },
                        {  0,  1,  0,  0, },
                        {  0,  0,  0,  1, },};

static float S_expect_float[N][N] =  {{ 85.57032,   0.00000,    0.00000,    0.00000,  },
                                { 0.00000,  126.42876,    0.00000,    0.00000,  },
                                { 0.00000,    0.00000,  110.90500,    0.00000,  },
                                { 0.00000,    0.00000,    0.00000,   34.00837,  },};

static matrix S_expect;

void TEST_SVD_decompose(void)
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            S_expect[i][j] = TOFIX(S_expect_float[i][j], Q);
        }
    }

    SVD_matrix_int_to_fix(Min, Q);
    SVD_matrix_int_to_fix(Vout, Q);
    SVD_matrix_int_to_fix(Sout, Q);
    SVD_matrix_int_to_fix(Uout, Q);

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
