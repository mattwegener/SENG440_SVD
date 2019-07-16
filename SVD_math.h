
#ifndef SVD_MATH_H
#define SVD_MATH_H

#define EPS (0.0001f)

float SVD_tan(float x);
float SVD_sin(float x);
float SVD_cos(float x);
float SVD_atan(float y, float x);
float SVD_abs(float x);

#ifdef TEST
void TEST_SVD_math(void);
#endif

#endif /* SVD_MATH_H */
