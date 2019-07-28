
#include "SVD.h"

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
    matrix_elem num1 = 0.0;
    matrix_elem num2 = 0.0;
    matrix_elem den1 = 0.0;
    matrix_elem den2 = 0.0;
    matrix_elem sum = 0.0;
    matrix_elem diff = 0.0;
    matrix_elem qR = 0.0;
    matrix_elem qL = 0.0;

    while(!SVD_matrix_isDiagonal(S))
    {
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
                num1 = FADD(S[k][j], S[j][k]);
                num2 = FSUB(S[k][j], S[j][k]);
                den1 = FSUB(S[k][k], S[j][j]);
                den2 = FADD(S[k][k], S[j][j]);

                sum = SVD_atan( num1, den1 );
                diff = SVD_atan( num2, den2 );
                qL = FDIVI(FSUB(sum, diff),2);
                qR = FSUB(sum, qL);

                //Create U V rotation matrices for mulitplaction
                U_pair[j][j] = SVD_cos(qL);
                U_pair[j][k] = FMULI(SVD_sin(qL),-1);
                U_pair[k][j] = SVD_sin(qL);
                U_pair[k][k] = SVD_cos(qL);

                V_pair[j][j] = SVD_cos(qR);
                V_pair[j][k] = FMULI(SVD_sin(qR),-1);
                V_pair[k][j] = SVD_sin(qR);
                V_pair[k][k] = SVD_cos(qR);

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
            } //end for
        }//end for
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
    /*printf("\nUout = \n");
    SVD_matrix_print(Uout);
    printf("\nSout = \n");
    SVD_matrix_print(Sout);
    printf("\nVout = \n");
    SVD_matrix_print(Vout);*/

    assert(SVD_matrix_equal(Sout, S_expect));
}
#endif
