#include "SVD.h"

matrix Min   = {{  31.0,  77.0,  -11.0,  26.0, },
                {  -42.0,  14.0, 79.0,  -53.0, },
                {  -68.0,  -10.0,  45.0, 90.0, },
                {  34.0,  16.0,  38.0,  -19.0, },};
matrix Uout  = {{  1.0,  0.0,  0.0,  0.0, },
                {  0.0,  1.0,  0.0,  0.0, },
                {  0.0,  0.0,  1.0,  0.0, },
                {  0.0,  0.0,  0.0,  1.0, },};
matrix Vout  = {{  1.0,  0.0,  0.0,  0.0, },
                {  0.0,  1.0,  0.0,  0.0, },
                {  0.0,  0.0,  1.0,  0.0, },
                {  0.0,  0.0,  0.0,  1.0, },};
matrix Sout  = {{  1.0,  0.0,  0.0,  0.0, },
                {  0.0,  1.0,  0.0,  0.0, },
                {  0.0,  0.0,  1.0,  0.0, },
                {  0.0,  0.0,  0.0,  1.0, },};


int main(){

  SVD_decompose(Min, Uout, Sout, Vout);
  return 0;
}
