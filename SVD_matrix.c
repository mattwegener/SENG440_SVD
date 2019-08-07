
#include "SVD_matrix.h"

#ifdef TEST
#include <stdio.h>
#include <assert.h>
#define println(...) printf("\n")

void SVD_matrix_in_place_left_mul(matrix left, matrix rightInPlace)
{
	int i,j,k; // i is row, j is column, K is element in row/colum corresponding
	float accum[N]; // accummulator

	/* ALGO:
	 * For each column of rightInPlace:
	 * 		For each row of left
	 * 			go down the column (across the row)
	 * 			calculate the element and store in the accumulators
	 * 		
	 * 		Store the accumulator back to the column
	 */

	for ( j = 0; j < N; j++) // for each column of right
	{
		// accum = {0}, conceptual, don't uncomment this

		for ( i = 0; i < N; i++) // for each row of left
		{
			accum[i] = 0;

			for ( k = 0; k < N; k++) // calc the element for i-j combo
			{
				accum[i] += left[i][k] * rightInPlace[k][j];
			}
		}

		for (i = 0; i < N; i++)
		{
			rightInPlace[i][j] = accum[i];
		}
	}
}

void SVD_matrix_in_place_right_mul(matrix leftInPlace, matrix right)
{
	int i,j,k; // i is row, j is column, K is element in row/colum corresponding
	float accum[N]; // accummulator

	/* ALGO:
	 * For each row of leftInPlace:
	 * 		For each column of 
	 * 			go across the row (down the column)
	 * 			calculate the element and store in the accumulators
	 * 		
	 * 		Store the accumulator back to the row
	 */

	for (i = 0; i < N; i++)
	{
		for (j = 0; j < N; j++)
		{
			accum[j] = 0;

			for ( k = 0; k < N; k++) // calc the element for i-j combo
			{
				accum[j] += leftInPlace[i][k] * right[k][j];
			}
		}

		for (j = 0; j < N; j++)
		{
			leftInPlace[i][j] = accum[j];
		}
	}
}

void SVD_matrix_in_place_trans(matrix mat)
{
	matrix_elem swap;
	for (int i = 0; i < N - 1; i++)
	{
		for (int j = i + 1; j < N; j++)
		{
			swap = mat[i][j];
			mat[i][j] = mat[j][i];
			mat[j][i] = swap;
		}
	}
}

void SVD_matrix_in_place_left_mul_by_trans(matrix left, matrix rightInPlace)
{
	int i,j,k; // i is row, j is column, K is element in row/colum corresponding
	float accum[N]; // accummulator

	/* ALGO:
	 * For each column of rightInPlace:
	 * 		For each row of left
	 * 			go down the column (across the row)
	 * 			calculate the element and store in the accumulators
	 * 		
	 * 		Store the accumulator back to the column
	 */

	for ( j = 0; j < N; j++) // for each column of right
	{
		// accum = {0}, conceptual, don't uncomment this

		for ( i = 0; i < N; i++) // for each row of left
		{
			accum[i] = 0;

			for ( k = 0; k < N; k++) // calc the element for i-j combo
			{
				accum[i] += left[k][i] * rightInPlace[k][j]; // only difference from SVD_matrix_in_place_left_mul is the flipped ik on left[.][.]
			}
		}

		for (i = 0; i < N; i++)
		{
			rightInPlace[i][j] = accum[i];
		}
	}
}

void SVD_matrix_in_place_right_mul_by_trans(matrix leftInPlace, matrix right)
{
	int i,j,k; // i is row, j is column, K is element in row/colum corresponding
	float accum[N]; // accummulator

	/* ALGO:
	 * For each row of leftInPlace:
	 * 		For each column of right, !!!!!! but actually, we want to do each ROW of right because its the transpose that we want to multiply by !!!!!
	 * 			go across the row (across the row of right)
	 * 			calculate the element and store in the accumulators
	 * 		
	 * 		Store the accumulator back to the row
	 */

	for (i = 0; i < N; i++)
	{
		for (j = 0; j < N; j++)
		{
			accum[j] = 0;

			for ( k = 0; k < N; k++) // calc the element for i-j combo
			{
				accum[j] += leftInPlace[i][k] * right[j][k]; // only difference from SVD_matrix_in_place_right_mul is the jk flip on right[.][.]
			}
		}

		for (j = 0; j < N; j++)
		{
			leftInPlace[i][j] = accum[j];
		}
	}
}

void SVD_matrix_mul(matrix matrix1, matrix matrix2, matrix result){
  
  int i,j,k;
  
  for(j = 0; j < N; j++)
  {
    for(k = 0; k < N; k++)
    {
        result[j][k] = 0;
        for(i = 0; i < N; i++){
            result[j][k] += matrix1[j][i] * matrix2[i][k];
        }
    }
  }
}

void SVD_matrix_trans(matrix in, matrix out)
{
  for ( int i = 0; i < N; i++ )
  {
    for ( int j = 0; j < N; j++ )
    {
      out[j][i] = in[i][j];
    }
  }
}

void SVD_matrix_copy(matrix in, matrix out)
{
    for( int i = 0; i < N; i++ )
    {
        for ( int j = 0; j < N; j++ )
        {
            out[i][j] = in[i][j];
        }
    }
}

float SVD_matrix_dot(matrix matrix1, matrix matrix2, int row1, int col2){
  matrix_elem dot = 0.0;
  int i;
  for(i = 0; i < N; i++){
    dot += matrix1[row1][i] * matrix2[i][col2];
  }
  return dot;
}

bool SVD_matrix_equal(matrix matrix1, matrix matrix2)
{
    bool ret = true;
    int i,j;
    for (i = 0; i < N; i++)
    {
      for (j = 0; j < N; j++)
      {
        if (SVD_abs( matrix1[i][j] - matrix2[i][j]) > EPS)
        {
          ret = false;
          break;
        }
      }
    }
    return ret;
}


bool SVD_matrix_isDiagonal(matrix in)
{
  for (int i = 0; i < N; i++)
  {
    for (int j = 0; j < N; j++)
    {
      if (i != j)
      {
        if (SVD_abs(in[i][j]) >= EPS)
          return false;
      }
    }
  }

  // fall through
  return true;
}


void SVD_matrix_print(matrix m)
{
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[0][0], m[0][1], m[0][2], m[0][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[1][0], m[1][1], m[1][2], m[1][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[2][0], m[2][1], m[2][2], m[2][3]);
  printf("%10.5f %10.5f %10.5f %10.5f\n", m[3][0], m[3][1], m[3][2], m[3][3]);
}


static matrix I  = {{  1.0,  0.0,  0.0,  0.0, },
                    {  0.0,  1.0,  0.0,  0.0, },
                    {  0.0,  0.0,  1.0,  0.0, },
                    {  0.0,  0.0,  0.0,  1.0, },};

static matrix ones  = {{  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },};

static matrix ones1  = {{  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },};

static matrix ones2  = {{  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },
                       {  1.0,  1.0,  1.0,  1.0, },};

static matrix m1 = {{ 1.0,  2.0,  3.0,  4.0,},
                    { 5.0,  6.0,  7.0,  8.0,},
                    { 9.0, 10.0, 11.0, 12.0,},
                    {13.0, 14.0, 15.0, 16.0,},};

static matrix m2 = {{ 1.0,  2.0,  3.0,  4.0,},
                    { 5.0,  6.0,  7.0,  8.0,},
                    { 9.0, 10.0, 11.0, 12.0,},
                    {13.0, 14.0, 15.0, 16.0,},};

// for use as result
static matrix m3 = {{0.0,0.0,0.0,0.0,},
                    {0.0,0.0,0.0,0.0,},
                    {0.0,0.0,0.0,0.0,},
                    {0.0,0.0,0.0,0.0,},}; // zeros

static matrix m_expect = {{90.0, 100.0, 110.0, 120.0,},
                          {202.0, 228.0, 254.0, 280.0,},
                          {314.0, 356.0, 398.0, 440.0,},
                          {426.0, 484.0, 542.0, 600.0,},};

static matrix m1_tran = {{1.0,5.0,9.0,13.0,},{2.0,6.0,10.0,14.0,},{3.0,7.0,11.0,15.0,},{4.0,8.0,12.0,16.0,},};

void TEST_SVD_matrix_equal()
{
  // Test : test SVD_matrix_equal
  assert(SVD_matrix_equal(m1, m2));
}

    assert(SVD_matrix_dot(I,m1, 1, 0) == 5.0);
    assert(SVD_matrix_dot(I,m1, 1, 1) == 6.0);
    assert(SVD_matrix_dot(I,m1, 1, 2) == 7.0);
    assert(SVD_matrix_dot(I,m1, 1, 3) == 8.0);

    assert(SVD_matrix_dot(I,m1, 2, 0) == 9.0);
    assert(SVD_matrix_dot(I,m1, 2, 1) == 10.0);
    assert(SVD_matrix_dot(I,m1, 2, 2) == 11.0);
    assert(SVD_matrix_dot(I,m1, 2, 3) == 12.0);

    assert(SVD_matrix_dot(I,m1, 3, 0) == 13.0);
    assert(SVD_matrix_dot(I,m1, 3, 1) == 14.0);
    assert(SVD_matrix_dot(I,m1, 3, 2) == 15.0);
    assert(SVD_matrix_dot(I,m1, 3, 3) == 16.0);
    // reverse order
    assert(SVD_matrix_dot(m1,I, 0, 0) == 1.0);
    assert(SVD_matrix_dot(m1,I, 0, 1) == 2.0);
    assert(SVD_matrix_dot(m1,I, 0, 2) == 3.0);
    assert(SVD_matrix_dot(m1,I, 0, 3) == 4.0);

    assert(SVD_matrix_dot(m1,I, 1, 0) == 5.0);
    assert(SVD_matrix_dot(m1,I, 1, 1) == 6.0);
    assert(SVD_matrix_dot(m1,I, 1, 2) == 7.0);
    assert(SVD_matrix_dot(m1,I, 1, 3) == 8.0);

    assert(SVD_matrix_dot(m1,I, 2, 0) == 9.0);
    assert(SVD_matrix_dot(m1,I, 2, 1) == 10.0);
    assert(SVD_matrix_dot(m1,I, 2, 2) == 11.0);
    assert(SVD_matrix_dot(m1,I, 2, 3) == 12.0);

    assert(SVD_matrix_dot(m1,I, 3, 0) == 13.0);
    assert(SVD_matrix_dot(m1,I, 3, 1) == 14.0);
    assert(SVD_matrix_dot(m1,I, 3, 2) == 15.0);
    assert(SVD_matrix_dot(m1,I, 3, 3) == 16.0);

    // Test : test that dot product of [1 1 1 1] with column of matrix gives sum of column
    assert(SVD_matrix_dot(ones, m1, 0,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 0,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 0,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 0,3) == 40.0);

    assert(SVD_matrix_dot(ones, m1, 1,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 1,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 1,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 1,3) == 40.0);

    assert(SVD_matrix_dot(ones, m1, 2,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 2,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 2,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 2,3) == 40.0);

    assert(SVD_matrix_dot(ones, m1, 3,0) == 28.0);
    assert(SVD_matrix_dot(ones, m1, 3,1) == 32.0);
    assert(SVD_matrix_dot(ones, m1, 3,2) == 36.0);
    assert(SVD_matrix_dot(ones, m1, 3,3) == 40.0);
    // reverse order
    assert(SVD_matrix_dot(m1, ones, 0,0) == 10.0);
    assert(SVD_matrix_dot(m1, ones, 0,1) == 10.0);
    assert(SVD_matrix_dot(m1, ones, 0,2) == 10.0);
    assert(SVD_matrix_dot(m1, ones, 0,3) == 10.0);

    assert(SVD_matrix_dot(m1, ones, 1,0) == 26.0);
    assert(SVD_matrix_dot(m1, ones, 1,1) == 26.0);
    assert(SVD_matrix_dot(m1, ones, 1,2) == 26.0);
    assert(SVD_matrix_dot(m1, ones, 1,3) == 26.0);

    assert(SVD_matrix_dot(m1, ones, 2,0) == 42.0);
    assert(SVD_matrix_dot(m1, ones, 2,1) == 42.0);
    assert(SVD_matrix_dot(m1, ones, 2,2) == 42.0);
    assert(SVD_matrix_dot(m1, ones, 2,3) == 42.0);

    assert(SVD_matrix_dot(m1, ones, 3,0) == 58.0);
    assert(SVD_matrix_dot(m1, ones, 3,1) == 58.0);
    assert(SVD_matrix_dot(m1, ones, 3,2) == 58.0);
    assert(SVD_matrix_dot(m1, ones, 3,3) == 58.0);

    // Test dot product of two arbitrary columns
    assert(SVD_matrix_dot(m1, m2, 0, 0) == 90.0);
}

void TEST_SVD_matrix_in_place_left_mul()
{
	SVD_matrix_in_place_left_mul(I, ones);
	assert(SVD_matrix_equal(ones, ones1));

	SVD_matrix_in_place_left_mul(I, m1);
	assert(SVD_matrix_equal(m1, m2));

	SVD_matrix_in_place_left_mul(m2,m1);
	assert(SVD_matrix_equal(m1, m_expect));
	SVD_matrix_copy(m2, m1);
}


void TEST_SVD_matrix_in_place_right_mul(void)
{
	SVD_matrix_in_place_right_mul(ones, I);
	assert(SVD_matrix_equal(ones1, ones));

	SVD_matrix_in_place_right_mul(m1, I);
	assert(SVD_matrix_equal(m2, m1));

	SVD_matrix_in_place_right_mul(m1,m2);
	assert(SVD_matrix_equal(m_expect, m1));
	SVD_matrix_copy(m2, m1);
}

void TEST_SVD_matrix_mul()
{
  // Test Matrix multiplication with identity matrix
    SVD_matrix_mul(m1, I, m3);
    assert(SVD_matrix_equal(m1, m3));
    SVD_matrix_mul(I, m1, m3);
    assert(SVD_matrix_equal(m1, m3));
    SVD_matrix_mul(m1,m2, m3);
    assert(SVD_matrix_equal(m3, m_expect));
}

void TEST_SVD_matrix_trans(void)
{
  SVD_matrix_trans(m1, m3);
  assert(SVD_matrix_equal(m3, m1_tran));
}

void TEST_SVD_matrix_in_place_trans(void)
{
	SVD_matrix_in_place_trans(m1);
	assert(SVD_matrix_equal(m1,m1_tran));
	SVD_matrix_in_place_trans(m1);
	assert(SVD_matrix_equal(m1,m2));
}

void TEST_SVD_matrix_in_place_left_mul_by_trans(void)
{
	// at the start of this, m1 and m2 are equal
	SVD_matrix_in_place_left_mul_by_trans(m1, m2);
	// m2 is now equal to  m1^T * m2
	SVD_matrix_mul(m1_tran, m1, m3);
	assert(SVD_matrix_equal(m3, m2));
	SVD_matrix_copy(m1,m2); // cleanup

}

void TEST_SVD_matrix_in_place_right_mul_by_trans(void)
{
	// at the start of this, m1 and m2 are equal
	SVD_matrix_in_place_right_mul_by_trans(m2, m1);
	// m2 is now equal to m2 * m1^T
	SVD_matrix_mul(m1, m1_tran, m3);
	assert(SVD_matrix_equal(m3, m2));
	SVD_matrix_copy(m1,m2); // cleanup

}

void TEST_SVD_matrix_copy(void)
{
    SVD_matrix_copy(m1, m3);
    assert(SVD_matrix_equal(m1, m3));
}

void TEST_SVD_matrix_isDiagonal(void)
{
    assert(SVD_matrix_isDiagonal(I));
    assert(!SVD_matrix_isDiagonal(m1));
}



#endif
