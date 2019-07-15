
#ifndef SVD_H
#define SVD_H

#include "SVD_math.h"
#include "SVD_matrix.h"

void SVD_decompose(matrix* M /*IN*/, matrix* U /*OUT*/, matrix* S /*OUT*/, matrix* V /*OUT*/ );

#ifdef TESTING
void TEST_SVD_decompose(void);
#endif

#endif