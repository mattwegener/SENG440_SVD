
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

  matrix tmp_m, U, Vt;
  tmp_M = *M;
  U = {{  1.0,  0.0,  0.0,  0.0, },
  {  0.0,  1.0,  0.0,  0.0, },
  {  0.0,  0.0,  1.0,  0.0, },
  {  0.0,  0.0,  0.0,  1.0, },};

  Vt = {{  1.0,  0.0,  0.0,  0.0, },
  {  0.0,  1.0,  0.0,  0.0, },
  {  0.0,  0.0,  1.0,  0.0, },
  {  0.0,  0.0,  0.0,  1.0, },};

  matrix Up,Mp,Vtp;
  matrix U_pair, V_pair, U_pairt, V_pairt;

  matrix_elem left_rot[2][2];
  matrix_elem right_rot[2][2];
  matrix_elem pair_m[2][2];
  /*
  do pairs:
  1-2, 1-3, 1-4
  2-3, 2-4
  3-4
  */
  //rows: j
  //cols: k
  double sum, diff, qR, qL;
  for(int j = 0; j < N; j++){
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

       U_pair[j][j] = SVD_cos(qL); U_pair[j][k] = -1*SVD_sin(qL);
       U_pair[k][j] = SVD_sin(qL); U_pair[k][k] = SVD_cos(qL);

       V_pair[j][j] = SVD_cos(qR); V_pair[j][k] = -1*SVD_sin(qR);
       V_pair[k][j] = SVD_sin(qR); V_pair[k][k] = SVD_cos(qR);

       //transpose matrices
       SVD_matrix_trans(U_pair,U_pairt);
       SVD_matrix_trans(V_pair,V_pairt);

       SVD_matrix_mul(U,U_pairt,Up);
       SVD_matrix_mul(V_pair,Vt,Vtp);

       SVD_matrix_mul(U_pair,tmp_M,Mp); //U pair * M -> M'
       SVD_matrix_mul(Mp,V_pairt,tmp_M); //M' * V pair t -> M

       //Update V & U
       U = Up;
       Vt = Vtp;


    }
  }

}


#ifdef TEST
void TEST_SVD_decompose(void)
{
    // TODO
}
#endif
