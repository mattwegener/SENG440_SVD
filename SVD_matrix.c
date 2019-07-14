
#include "SVD_matrix.h"

void SVD_matrix_mul(matrix* matrix1, matrix* matrix2, matrix* result){
  int j,k;
  for(j = 0; j < N; j++){
    for(k = 0; k < N; k++){
      (*result)[j][k] = SVD_matrix_dot(matrix1,matrix2,j,k);
    }
  }


}

float SVD_matrix_dot(matrix* matrix1, matrix* matrix2, int row1, int col2){
  matrix_elem dot = 0.0;
  int i;
  for(i = 0; i < N; i++){
    dot += (*matrix1)[row1][i] * (*matrix2)[i][col2];
  }
  return dot;
}

bool SVD_matrix_equal(matrix* matrix1, matrix* matrix2)
{
    bool ret = true;
    int i,j;
    for (i = 0; i < N; i++)
    {
      for (j = 0; j < N; j++)
      {
        if ((*matrix1)[i][j] != (*matrix2)[i][j])
        {
          ret = false;
          break;
        }
      }
    }
    return ret;
}

#ifdef TESTING
#include <stdio.h>
void SVD_matrix_print(matrix* m)
{
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[0][0], (*m)[0][1], (*m)[0][2], (*m)[0][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[1][0], (*m)[1][1], (*m)[1][2], (*m)[1][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[2][0], (*m)[2][1], (*m)[2][2], (*m)[2][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", (*m)[3][0], (*m)[3][1], (*m)[3][2], (*m)[3][3]);
}
#endif