#include "Matrix.h"
#include "Matrix_test_helpers.h"
#include "unit_test_framework.h"

using namespace std;


// Here's a free test for you! Model yours after this one.
// Test functions have no interface and thus no RMEs, but
// add a comment like the one here to say what it is testing.
// -----
// Fills a 3x5 Matrix with a value and checks
// that Matrix_at returns that value for each element.
TEST(test_fill_basic) {
  Matrix *mat = new Matrix; // create a Matrix in dynamic memory

  const int width = 3;
  const int height = 5;
  const int value = 42;
  Matrix_init(mat, 3, 5);
  Matrix_fill(mat, value);

  for(int r = 0; r < height; ++r){
    for(int c = 0; c < width; ++c){
      ASSERT_EQUAL(*Matrix_at(mat, r, c), value);
    }
  }

  delete mat; // delete the Matrix
}

// Testing Matrix_init, Matrix_width, Matrix_height
TEST(test_Matrix_init_width_height) {
	Matrix* mat = new Matrix;

	const int width = 3;
	const int height = 5;
	Matrix_init(mat, width, height);
	ASSERT_EQUAL(Matrix_width(mat), width);
	ASSERT_EQUAL(Matrix_height(mat), height);

	const int width1 = 1;
	const int height1 = 1;
	Matrix_init(mat, width1, height1);
	ASSERT_EQUAL(Matrix_width(mat), width1);
	ASSERT_EQUAL(Matrix_height(mat), height1);

	Matrix_init(mat, MAX_MATRIX_WIDTH, MAX_MATRIX_HEIGHT);
	ASSERT_EQUAL(Matrix_width(mat), MAX_MATRIX_WIDTH);
	ASSERT_EQUAL(Matrix_height(mat), MAX_MATRIX_HEIGHT);

	delete mat;
}

// Tesing Matrix_print
TEST(test_Matrix_print) {
	Matrix* mat = new Matrix;

	const int width = 2;
	const int height = 3;
	const int value = 70;
	const int value1 = 9;
	Matrix_init(mat, width, height);
	Matrix_fill(mat, value);
	*Matrix_at(mat, 2, 1) = value1;

	ostringstream expected;
	expected << "2 3\n"
			 << "70 70 \n"
			 << "70 70 \n"
			 << "70 9 \n";
	ostringstream actual;
	Matrix_print(mat, actual);
	ASSERT_EQUAL(expected.str(), actual.str());

	Matrix_init(mat, 1, 1);
	*Matrix_at(mat, 0, 0) = 250;
	ostringstream expected1;
	expected1 << "1 1\n"
		      << "250 \n";
	ostringstream actual1;
	Matrix_print(mat, actual1);
	ASSERT_EQUAL(expected1.str(), actual1.str());

	delete mat;
}

// Testing Matrix_row, Matrix_column, Matrix_at
TEST(test_Matrix_row_column_at) {
	Matrix* mat = new Matrix;

	Matrix_init(mat, 3, 3);
	Matrix_fill(mat, 0);
	*Matrix_at(mat, 1, 2) = 23;

	int *ptr = Matrix_at(mat, 1, 2);
	ASSERT_EQUAL(Matrix_row(mat, ptr), 1);
	ASSERT_EQUAL(Matrix_column(mat, ptr), 2);
	ASSERT_EQUAL(*ptr, 23);
	
	*Matrix_at(mat, 0, 0) = 45;
	int *ptr2 = Matrix_at(mat, 0, 0);
	ASSERT_EQUAL(Matrix_row(mat, ptr2), 0);
	ASSERT_EQUAL(Matrix_column(mat, ptr2), 0);
	ASSERT_EQUAL(*ptr2, 45);

	*Matrix_at(mat, 2, 2) = 67;
	int *ptr3 = Matrix_at(mat, 2, 2);
	ASSERT_EQUAL(Matrix_row(mat, ptr3), 2);
	ASSERT_EQUAL(Matrix_column(mat, ptr3), 2);
	ASSERT_EQUAL(*ptr3, 67);

	*Matrix_at(mat, 2, 1) = 24;
	const int *cptr = Matrix_at(mat, 2, 1);
	ASSERT_EQUAL(*cptr, 24);

	Matrix_init(mat, 1, 1);
	*Matrix_at(mat, 0, 0) = 89;

	int *ptr4 = Matrix_at(mat, 0, 0);
	ASSERT_EQUAL(Matrix_row(mat, ptr4), 0);
	ASSERT_EQUAL(Matrix_column(mat, ptr4), 0);
	ASSERT_EQUAL(*ptr4, 89);

	delete mat;
}

// Testing Matrix_fill, Matrix_fill_border
TEST(Matrix_fill_fill_border) {
	Matrix* mat = new Matrix;

	Matrix_init(mat, 1, 1);
	Matrix_fill(mat, 11);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 0), 11);
	Matrix_fill_border(mat, 22);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 0), 22);

	Matrix_init(mat, 2, 2);
	Matrix_fill_border(mat, 33);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 0), 33);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 0), 33);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 1), 33);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 1), 33);
	Matrix_fill(mat, 44);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 0), 44);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 0), 44);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 1), 44);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 1), 44);

	Matrix_init(mat, 3, 4);
	Matrix_fill(mat, 55);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 0), 55);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 1), 55);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 1), 55);
	ASSERT_EQUAL(*Matrix_at(mat, 2, 1), 55);
	Matrix_fill_border(mat, 66);
	ASSERT_EQUAL(*Matrix_at(mat, 0, 2), 66);
	ASSERT_EQUAL(*Matrix_at(mat, 1, 1), 55);
	ASSERT_EQUAL(*Matrix_at(mat, 2, 2), 66);
	ASSERT_EQUAL(*Matrix_at(mat, 2, 1), 55);

	delete mat;
}

// Testing Matrix_max
TEST(test_Matrix_max) {
	Matrix* mat = new Matrix;
	Matrix_init(mat, 1, 1);
	Matrix_fill(mat, 0);
	ASSERT_EQUAL(Matrix_max(mat), 0);
	*Matrix_at(mat, 0, 0) = 245;
	ASSERT_EQUAL(Matrix_max(mat), 245);

	Matrix_init(mat, 4, 5);
	Matrix_fill(mat, 7);
	ASSERT_EQUAL(Matrix_max(mat), 7);
	*Matrix_at(mat, 3, 2) = 24;
	*Matrix_at(mat, 2, 3) = 23;
	ASSERT_EQUAL(Matrix_max(mat), 24);

	delete mat;
}

// Testing Matrix_min_value_in_row, Matrix_column_of_min_value_in_row
TEST(test_Matrix_min_value_in_row_column_of_min_value_in_row) {
	Matrix* mat = new Matrix;

	Matrix_init(mat, 3, 2);
	Matrix_fill(mat, 72);
	ASSERT_EQUAL(Matrix_column_of_min_value_in_row(mat, 0, 0, 2), 0);
	ASSERT_EQUAL(Matrix_min_value_in_row(mat, 0, 0, 2), 72);
	*Matrix_at(mat, 1, 0) = 71;
	*Matrix_at(mat, 1, 2) = 73;
	ASSERT_EQUAL(Matrix_column_of_min_value_in_row(mat, 1, 1, 3), 1);
	ASSERT_EQUAL(Matrix_min_value_in_row(mat, 1, 1, 3), 72);
	ASSERT_EQUAL(Matrix_column_of_min_value_in_row(mat, 1, 0, 3), 0);
	ASSERT_EQUAL(Matrix_min_value_in_row(mat, 1, 0, 3), 71);
	*Matrix_at(mat, 1, 2) = 70;
	ASSERT_EQUAL(Matrix_column_of_min_value_in_row(mat, 1, 0, 2), 0);
	ASSERT_EQUAL(Matrix_min_value_in_row(mat, 1, 0, 2), 71);

	delete mat;
}

// NOTE: The unit test framework tutorial in Lab 2 originally
// had a semicolon after TEST_MAIN(). Although including and
// excluding the semicolon are both correct according to the c++
// standard, the version of g++ we are using reports a warning
// when there is a semicolon. Therefore do NOT add a semicolon
// after TEST_MAIN()
TEST_MAIN() // Do NOT put a semicolon here
