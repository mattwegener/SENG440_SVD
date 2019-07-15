
#include "SVD.h"
#include <stdio.h>

static matrix I  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};

void SVD_decompose(matrix* M /*IN*/, matrix* U /*OUT*/, matrix* S /*OUT*/, matrix* V /*OUT*/ )
{
    int sweep_counter = 0;
    int iter_counter = 0;
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
    SVD_matrix_copy(M,S);
    SVD_matrix_copy(&I, U);
    SVD_matrix_copy(&I, &Vt);

    matrix Up = {0};
    matrix Mp = {0};
    matrix Vtp = {0};
    matrix U_pair, V_pair, U_pair_trans, V_pair_trans;

    //matrix_elem pair_m[2][2];
    /*
    do pairs:
    1-2, 1-3, 1-4
    2-3, 2-4
    3-4
    */
    //rows: j
    //cols: k
    char signal;
    float sum, diff, qR, qL;
    while(!SVD_matrix_isDiagonal(S)){
        for(int j = 0; j < N-1; j++){

            sum = 0; diff = 0;
            qR = 0; qL = 0;
            SVD_matrix_copy(&I,&Up);
            SVD_matrix_copy(&I,&Mp);
            SVD_matrix_copy(&I,&Vtp);
            SVD_matrix_copy(&I,&U_pair);
            SVD_matrix_copy(&I,&V_pair);
            SVD_matrix_copy(&I,&U_pair_trans); 
            SVD_matrix_copy(&I,&V_pair_trans);

            for(int k = j+1; k < N; k++){
                //calculate rotation angles

                printf("S = \n");
                SVD_matrix_print(S);
                printf("U = \n");
                SVD_matrix_print(U);
                printf("Vt = \n");
                SVD_matrix_print(&Vt);

                printf("Enter to continue: ");
                scanf("%c", &signal);
                printf("\n\n");
                
                sum = SVD_atan2(  ( (*S)[k][j] + (*S)[j][k] ),  /**/  ( (*S)[k][k] - (*S)[j][j] ) );
                diff = SVD_atan2( ( (*S)[k][j] - (*S)[j][k] ),  /**/  ( (*S)[k][k] + (*S)[j][j] ) );
                qL = (sum - diff)/2;
                qR = sum - qL;

                /* Can use these to check energy transfer to main diagonal */

                /////////////////////////////////////////////////////////////////////////////////
                matrix_elem pair_11;
                matrix_elem pair_22;

                matrix_elem x1 = (*S)[j][j];
                matrix_elem x2 = (*S)[j][k];
                matrix_elem x3 = (*S)[k][j];
                matrix_elem x4 = (*S)[k][k];

                pair_11 = (x1*SVD_cos(qL) - x3*SVD_sin(qL)) * SVD_cos(qR);
                pair_11 -= ((x2*SVD_cos(qL) - x4*SVD_sin(qL)) * SVD_sin(qR));

                pair_22 = SVD_sin(qR)*(x1*SVD_sin(qL) + x3*SVD_cos(qL));
                pair_22 += (SVD_cos(qR)*(x2*SVD_sin(qL) + x4*SVD_cos(qL)));

                printf("j = %d\n", j);
                printf("k = %d\n", k);
                printf("sum = %f\n", sum);
                printf("diff = %f\n", diff);
                printf("qR = %f\n", qR);
                printf("qL = %f\n", qL);
                printf("x1 = %f\n", x1);
                printf("x2 = %f\n", x2);
                printf("x3 = %f\n", x3);
                printf("x4 = %f\n", x4);
                printf("pair_11 = %f\n", pair_11);
                printf("pair_22 = %f\n", pair_22);

                //////////////////////////////////////////////////////////////////////////////////
                

                //Create U V rotation matrices for mulitplaction
                U_pair[j][j] = SVD_cos(qL);
                U_pair[j][k] = -1*SVD_sin(qL);
                U_pair[k][j] = SVD_sin(qL);
                U_pair[k][k] = SVD_cos(qL);

                V_pair[j][j] = SVD_cos(qR);
                V_pair[j][k] = -1*SVD_sin(qR);
                V_pair[k][j] = SVD_sin(qR);
                V_pair[k][k] = SVD_cos(qR);

                //Transpose matrices
                SVD_matrix_trans(&U_pair,&U_pair_trans);
                SVD_matrix_trans(&V_pair,&V_pair_trans);

                //DO algorithm multiplaction
                SVD_matrix_mul(U,&U_pair_trans,&Up);
                SVD_matrix_mul(&V_pair,&Vt,&Vtp);

                SVD_matrix_mul(&U_pair,S,&Mp); //U pair * S -> M'
                SVD_matrix_mul(&Mp,&V_pair_trans,S); //M' * V pair t -> S

                //Update S, U, V, Vt
                SVD_matrix_copy(&Vtp,&Vt);
                SVD_matrix_trans(&Vt,V);
                SVD_matrix_copy(&Up,U);

                iter_counter++;
            } //end for
        }//end for

        sweep_counter++;
    }//end while

    printf("Sweeps: %d, Total Iterations: %d\n\n", sweep_counter, iter_counter);
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

static matrix S_expect = {  {85.570,    0.0,        0.0,        0.0,},
                            {0.0,       126.429,    0.0,        0.0,},
                            {0.0,       0.0,        -110.905,   0.0,},
                            {0.0,       0.0,        0.0,        34.008,},};

void TEST_SVD_decompose(void)
{
    // TODO
    SVD_decompose(&Min, &Uout, &Sout, &Vout);
    SVD_matrix_print(&Uout);
    printf("\n");
    SVD_matrix_print(&Sout);
    printf("\n");
    SVD_matrix_print(&Vout);
    printf("\n");

    assert(SVD_matrix_equal(&Sout, &S_expect));
}
#endif
