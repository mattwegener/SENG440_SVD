
#include "SVD.h"

void SVD_decompose(matrix* M /*IN*/, matrix* U /*OUT*/, matrix* S /*OUT*/, matrix* V /*OUT*/ )
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

    matrix tmp_m, Vt;
    SVD_matrix_copy(&M,&tmp_M);
    U = {{  1.0,  0.0,  0.0,  0.0, },
    {  0.0,  1.0,  0.0,  0.0, },
    {  0.0,  0.0,  1.0,  0.0, },
    {  0.0,  0.0,  0.0,  1.0, },};

    Vt = {{  1.0,  0.0,  0.0,  0.0, },
    {  0.0,  1.0,  0.0,  0.0, },
    {  0.0,  0.0,  1.0,  0.0, },
    {  0.0,  0.0,  0.0,  1.0, },};

    matrix Up,Mp,Vtp;
    Up = {0}; Mp = {0}; Vtp = {0};
    matrix U_pair, V_pair, U_pairt, V_pairt;

    //matrix_elem pair_m[2][2];
    /*
    do pairs:
    1-2, 1-3, 1-4
    2-3, 2-4
    3-4
    */
    //rows: j
    //cols: k
    double sum, diff, qR, qL;
    while(!SVD_matrix_isDiagonal(&S)){
        for(int j = 0; j < N; j++){
            sum = 0; diff = 0;
            qR = 0; qL = 0;
            SVD_matrix_copy(&I,&Up); SVD_matrix_copy(&I,&Mp); SVD_matrix_copy(&I,&Vtp);
            SVD_matrix_copy(&I,&U_pair); SVD_matrix_copy(&I,&V_pair);
            SVD_matrix_copy(&I,&U_pairt); SVD_matrix_copy(&I,&V_pairt);
            for(int k = j+1; k < N; k++){
                //calculate rotation angles
                sum = SVD_atan2((tmp_M[k][j] + tmp_M[j][k]),(tmp_M[k][k] - tmp_M[j][j]));
                diff = SVD_atan2((tmp_M[k][j] - tmp_M[j][k]),(tmp_M[k][k] + tmp_M[j][j]));
                qL = (sum - diff)/2;
                qR = sum - qL;

                /* Can use these to check energy transfer to main diagonal
                pair_m ={
                {1, 0},
                {0, 1},
                };

                pair_m[j][j] = (tmp_M[j][j]*SVD_cos(qL) - SVD_sin(qL)*tmp_M[k][j])*SVD_cos(qR) +
                     (tmp_M[j][k]*SVD_cos(qL) - SVD_sin(qL)*tmp_M[k][k])*-1*SVD_sin(qR);

                pair_m[k][k] = (tmp_M[j][j]*SVD_sin(qL) + SVD_cos(qL)*tmp_M[k][j])*SVD_sin(qR) +
                     (tmp_M[j][k]*SVD_sin(qL) + SVD_cos(qL)*tmp_M[k][k])*SVD_cos(qR);
                */

                //Create U V rotation matrices for mulitplaction
                U_pair[j][j] = SVD_cos(qL); U_pair[j][k] = -1*SVD_sin(qL);
                U_pair[k][j] = SVD_sin(qL); U_pair[k][k] = SVD_cos(qL);

                V_pair[j][j] = SVD_cos(qR); V_pair[j][k] = -1*SVD_sin(qR);
                V_pair[k][j] = SVD_sin(qR); V_pair[k][k] = SVD_cos(qR);

                //Transpose matrices
                SVD_matrix_trans(&U_pair,&U_pairt);
                SVD_matrix_trans(&V_pair,&V_pairt);

                //DO algorithm multiplaction
                SVD_matrix_mul(&U,&U_pairt,&Up);
                SVD_matrix_mul(&V_pair,&Vt,&Vtp);

                SVD_matrix_mul(&U_pair,&tmp_M,&Mp); //U pair * tmp_M -> M'
                SVD_matrix_mul(&Mp,&V_pairt,&tmp_M); //M' * V pair t -> tmp_M

                //Update S, U, V, Vt
                SVD_matrix_copy(&Vtp,&Vt);
                SVD_matrix_trans(&Vt,&V);
                SVD_matrix_copy(&Up,&U);
                SVD_matrix_copy(&tmp_M,&S);
            } //end for
        }//end for
    }//end while
}


#ifdef TEST

static matrix M  = {{  31,  77,  -11,  26, },
                    {  -42,  14, 79,  -53, },
                    {  -68,  -10,  45, 90, },
                    {  34,  16,  38,  -19, },};
static matrix U  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};
static matrix V  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};
static matrix S  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};

void TEST_SVD_decompose(void)
{
    // TODO
    SVD_decompose(&M, &U, &S, &V);
    SVD_matrix_print(&U);
    SVD_matrix_print(&S);
    SVD_matrix_print(&V);
}
#endif
