// Ryan Hennessey

#include "lab02.h"
#include "unit_test_framework.h"

// We define a test case with the TEST(<test_name>) macro.
// <test_name> can be any valid C++ function name.

void compare_arrays(int arr1[], int arr2[], int size) {
	for (int i = 0; i < size; ++i) {
		ASSERT_EQUAL(arr1[i], arr2[i]);
	}
}


TEST(test_slideRight) {
	int array1[6] = {6,2,3,4,1,5};
	int expected1[6] = {5,6,2,3,4,1};
	slideRight(array1, 6);
	compare_arrays(array1, expected1, 6);

	int array2[7] = {1,0,1,0,1,0,1};
	int expected2[7] = {1,1,0,1,0,1,0};
	slideRight(array2, 7);
	compare_arrays(array2, expected2, 7);
}

TEST(test_flip) {
	int array1[6] = {6,2,3,4,1,5};
	int expected1[6] = {5,1,4,3,2,6};
	flip(array1, 6);
	compare_arrays(array1, expected1, 6);

	int array2[7] = {9,4,5,1,3,8,2};
	int expected2[7] = {2,8,3,1,5,4,9};
	flip(array2, 7);
	compare_arrays(array2, expected2, 7);
}

TEST(true_is_true) {
	ASSERT_TRUE(true);
}

TEST(numbers_are_equal) {
	ASSERT_EQUAL(42, 42);
}

TEST_MAIN() // No semicolon!