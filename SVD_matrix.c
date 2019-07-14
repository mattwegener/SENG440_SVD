#include "SVD_matrix.h"

void SVD_matrix_mul(matrix* matrix1, matrix* matrix2, matrix* result){
  int size = matrix1->n;
  int j,k;

  for(j = 0; j < size; j++){
    for(k = 0; k < size; k++){
      result->elements[j][k] = SVD_matrix_dot(&matrix1,&matrix2,j,k);
    }
  }


}

float SVD_matrix_dot(matrix* matrix1, matrix* matrix2, int row1, int col2){
  float dot;
  int size = matrix1->n;
  int i;
  for(i = 0;i<size;i++){
    dot += matrix1->elements[row1][i] * matrix2->elements[i][col2];
  }
  return dot
}
