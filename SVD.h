
#ifndef SVD_H
#define SVD_H

#include "SVD_math.h"
#include "SVD_matrix.h"
#include "SVD_defs.h"

void SVD_decompose(matrix M /*IN*/, matrix U /*OUT*/, matrix S /*OUT*/, matrix V /*OUT*/ );

#ifdef TEST
void TEST_SVD_decompose(void);
#endif

#endif