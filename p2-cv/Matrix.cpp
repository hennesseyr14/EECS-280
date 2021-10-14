#include <cassert>
#include "Matrix.h"

// REQUIRES: mat points to a Matrix
//           0 < width && width <= MAX_MATRIX_WIDTH
//           0 < height && height <= MAX_MATRIX_HEIGHT
// MODIFIES: *mat
// EFFECTS:  Initializes *mat as a Matrix with the given width and height.
// NOTE:     Do NOT use new or delete here.
void Matrix_init(Matrix* mat, int width, int height) {
	// Verify REQUIRES clauses
    assert(0 < width && width <= MAX_MATRIX_WIDTH);
	assert(0 < height && height <= MAX_MATRIX_HEIGHT);

	// Set width and height of matrix
	mat->width = width;
	mat->height = height;
}

// REQUIRES: mat points to a valid Matrix
// MODIFIES: os
// EFFECTS:  First, prints the width and height for the Matrix to os:
//             WIDTH [space] HEIGHT [newline]
//           Then prints the rows of the Matrix to os with one row per line.
//           Each element is followed by a space and each row is followed
//           by a newline. This means there will be an "extra" space at
//           the end of each line.
void Matrix_print(const Matrix* mat, std::ostream& os) {
	// Print out dimensions of matrix
	os << mat->width << " " << mat->height << "\n";

	// Print out values in matrix
	int size = mat->width * mat->height;
	for (int i = 0; i < size; ++i) {
		os << mat->data[i] << " ";
		if ((i + 1) % mat->width == 0) {
			os << "\n";
		}
	}
}

// REQUIRES: mat points to an valid Matrix
// EFFECTS:  Returns the width of the Matrix.
int Matrix_width(const Matrix* mat) {
	return mat->width;
}

// REQUIRES: mat points to a valid Matrix
// EFFECTS:  Returns the height of the Matrix.
int Matrix_height(const Matrix* mat) {
	return mat->height;
}

// REQUIRES: mat points to a valid Matrix
//           ptr points to an element in the Matrix
// EFFECTS:  Returns the row of the element pointed to by ptr.
int Matrix_row(const Matrix* mat, const int* ptr) {
	// Verify REQUIRES clause
	int size = mat->width * mat->height;
	const int* ptr_min = &((*mat).data[0]);
	const int* ptr_max = &((*mat).data[size - 1]);
    assert(ptr_min <= ptr && ptr <= ptr_max);

	// Return row of the element
    return (ptr - ptr_min) / mat->width;
}

// REQUIRES: mat points to a valid Matrix
//           ptr point to an element in the Matrix
// EFFECTS:  Returns the column of the element pointed to by ptr.
int Matrix_column(const Matrix* mat, const int* ptr) {
	// Verify REQUIRES clause
	int size = mat->width * mat->height;
	const int* ptr_min = &((*mat).data[0]);
	const int* ptr_max = &((*mat).data[size - 1]);
	assert(ptr_min <= ptr && ptr <= ptr_max);

	// Return column of the element
	return (ptr - ptr_min) % mat->width;
}

// REQUIRES: mat points to a valid Matrix
//           0 <= row && row < Matrix_height(mat)
//           0 <= column && column < Matrix_width(mat)
//
// MODIFIES: (The returned pointer may be used to modify an
//            element in the Matrix.)
// EFFECTS:  Returns a pointer to the element in the Matrix
//           at the given row and column.
int* Matrix_at(Matrix* mat, int row, int column) {
	// Verify REQUIRES clauses
	assert(0 <= row && row < Matrix_height(mat));
	assert(0 <= column && column < Matrix_width(mat));

	// Return pointer to the specified element
	int* ptr = &((*mat).data[0]);
	return ptr + row * mat->width + column;
}

// REQUIRES: mat points to a valid Matrix
//           0 <= row && row < Matrix_height(mat)
//           0 <= column && column < Matrix_width(mat)
//
// EFFECTS:  Returns a pointer-to-const to the element in
//           the Matrix at the given row and column.
const int* Matrix_at(const Matrix* mat, int row, int column) {
	// Verify REQUIRES clauses
	assert(0 <= row && row < Matrix_height(mat));
	assert(0 <= column && column < Matrix_width(mat));

	// Return pointer to the specified element
	const int* ptr = &((*mat).data[0]);
	return ptr + row * mat->width + column;
}

// REQUIRES: mat points to a valid Matrix
// MODIFIES: *mat
// EFFECTS:  Sets each element of the Matrix to the given value.
void Matrix_fill(Matrix* mat, int value) {
	// Loop through entire matrix and set each element to the specified value
	int size = mat->width * mat->height;
	for (int i = 0; i < size; ++i) {
		mat->data[i] = value;
	}
}

// REQUIRES: mat points to a valid Matrix
// MODIFIES: *mat
// EFFECTS:  Sets each element on the border of the Matrix to
//           the given value. These are all elements in the first/last
//           row or the first/last column.
void Matrix_fill_border(Matrix* mat, int value) {
	int size = mat->width * mat->height;
	for (int i = 0; i < size; ++i) {
		// Set first row to value
		if (i < mat->width) {
			mat->data[i] = value;
		}
		// Set last row to value
		else if (i >= size - mat->width) {
			mat->data[i] = value;
		}
		// Set first column to value
		else if (i % mat->width == 0) {
			mat->data[i] = value;
		}
		// Set last column to value
		else if ((i + 1) % mat->width == 0) {
			mat->data[i] = value;
		}
	}
}

// REQUIRES: mat points to a valid Matrix
// EFFECTS:  Returns the value of the maximum element in the Matrix
int Matrix_max(const Matrix* mat) {
	int size = mat->width * mat->height;

	// Set max to first element, then find max in matrix
	int max = mat->data[0];
	for (int i = 0; i < size; ++i) {
		if (mat->data[i] > max) {
			max = mat->data[i];
		}
	}
	return max;
}

// REQUIRES: mat points to a valid Matrix
//           0 <= row && row < Matrix_height(mat)
//           0 <= column_start && column_end <= Matrix_width(mat)
//           column_start < column_end
// EFFECTS:  Returns the column of the element with the minimal value
//           in a particular region. The region is defined as elements
//           in the given row and between column_start (inclusive) and
//           column_end (exclusive).
//           If multiple elements are minimal, returns the column of
//           the leftmost one.
int Matrix_column_of_min_value_in_row(const Matrix* mat, int row,
                                      int column_start, int column_end) {
	// Verify REQUIRES clauses
	assert(0 <= row && row < Matrix_height(mat));
	assert(0 <= column_start && column_end <= Matrix_width(mat));
	assert(column_start < column_end);

	// Find column of minimum value and return
	int min = mat->data[row * mat->width + column_start];
	int min_column = column_start;
	for (int column = column_start; column < column_end; ++column) {
		if (mat->data[row * mat->width + column] < min) {
			min = mat->data[row * mat->width + column];
			min_column = column;
		}
	}
	return min_column;
}

// REQUIRES: mat points to a valid Matrix
//           0 <= row && row < Matrix_height(mat)
//           0 <= column_start && column_end <= Matrix_width(mat)
//           column_start < column_end
// EFFECTS:  Returns the minimal value in a particular region. The region
//           is defined as elements in the given row and between
//           column_start (inclusive) and column_end (exclusive).
int Matrix_min_value_in_row(const Matrix* mat, int row,
                            int column_start, int column_end) {
	// Verify REQUIRES clauses
	assert(0 <= row && row < Matrix_height(mat));
	assert(0 <= column_start && column_end <= Matrix_width(mat));
	assert(column_start < column_end);

	// Find minimum value and return
	int min = mat->data[row * mat->width + column_start];
	for (int column = column_start; column < column_end; ++column) {
		if (mat->data[row * mat->width + column] < min) {
			min = mat->data[row * mat->width + column];
		}
	}
	return min;
}
