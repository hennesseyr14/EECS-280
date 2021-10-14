// Ryan Hennessey

#include "lab02.h"

#include <iostream>

using namespace std;

// REQUIRES: there are at least n elements in arr
// MODIFIES: cout
// EFFECTS:  Prints out n elements from arr
// NOTE:     You must use traversal by index.
void printArrayIndex(const int arr[], int n){
	for (int i = 0; i < n; ++i) {
		cout << arr[i] << " ";
	}
}

// REQUIRES: there are at least n elements in arr
// MODIFIES: cout
// EFFECTS:  Prints out n elements from arr
// NOTE:     You must use traversal by pointer.
void printArrayPointer(const int arr[], int n){
	for (const int *ptr = arr; ptr < arr + n; ++ptr) {
		cout << *ptr << " ";
	}
}

// REQUIRES: there are at least n elements in arr
// MODIFIES: arr
// EFFECTS:  all elements are "shifted" right by one unit
//           for example, [0,1,3,3,4]
//           would become [4,0,1,3,3]
// NOTE:     You must use traversal by pointer.
//           You may not use an extra array.
void slideRight(int arr[], int n){
	int x = *(arr + n - 1);
	for (int *ptr = arr + n - 1; ptr > arr; --ptr) {
		*ptr = *(ptr - 1);
	}
	*arr = x;
}

// REQUIRES: there are at least n elements in arr
// MODIFIES: arr
// EFFECTS:  the order of elements in arr is reversed
//           for example, [1,2,3,4,5]
//           would become [5,4,3,2,1]
// NOTE:     You must use traversal by pointer.
//           You may not use an extra array.
void flip(int arr[], int n){
	int x = 0;
	int *ptr2 = arr + n - 1;
	for (int *ptr = arr; ptr < arr + n / 2; ptr++) {
		x = *ptr;
		*ptr = *(ptr2 - (ptr - arr));
		*(ptr2 - (ptr - arr)) = x;
	}
}

// REQUIRES: there are at least n elements in arr
//           the elements of arr are sorted in ascending order
//           there may be duplicates
// MODIFIES: arr
// EFFECTS:  Returns the number of unique elements and now arr
//           begins with those unique elements in sorted order.
//           The rest of the array doesn't matter.
// NOTE:     You must use traversal by pointer.
//           Your solution must be in-place and run in linear time.
int removeDuplicates(int arr[], int n){
  // TASK 4 - REPLACE WITH YOUR CODE
  return 0;
}
