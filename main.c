#include "SVD.h"
#include "SVD_matrix.c"


int main(){
  matrix Min   = {{   31,   77,  -11,   26, },
                {  -42,   14,   79,  -53, },
                {  -68,  -10,   45,   90, },
                {   34,   16,   38,  -19, },};
  matrix Uout  = {{  MATRIX_1,  0,  0,  0, },
                    {  0,  MATRIX_1,  0,  0, },
                    {  0,  0,  MATRIX_1,  0, },
                    {  0,  0,  0,  MATRIX_1, },};
  matrix Vout  = {{  MATRIX_1,  0,  0,  0, },
                    {  0,  MATRIX_1,  0,  0, },
                    {  0,  0,  MATRIX_1,  0, },
                    {  0,  0,  0,  MATRIX_1, },};
  matrix Sout  = {{  MATRIX_1,  0,  0,  0, },
                {  0,  MATRIX_1,  0,  0, },
                {  0,  0,  MATRIX_1,  0, },
                {  0,  0,  0,  MATRIX_1, },};

  SVD_matrix_int_to_fix(Min);
  SVD_decompose(Min, Uout, Sout, Vout);
  return 0;
}
