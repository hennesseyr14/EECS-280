// REQUIRES: there are at least n elements in arr
// MODIFIES: cout
// EFFECTS:  Prints out n elements from arr
// NOTE:     You must use traversal by index.
void printArrayIndex(const int arr[], int n);

// REQUIRES: there are at least n elements in arr
// MODIFIES: cout
// EFFECTS:  Prints out n elements from arr
// NOTE:     You must use traversal by pointer.
void printArrayPointer(const int arr[], int n);

// REQUIRES: there are at least n elements in arr
// MODIFIES: arr
// EFFECTS:  all elements are "shifted" right by one unit
//           for example, [0,1,3,3,4]
//           would become [4,0,1,3,3]
// NOTE:     You must use traversal by pointer.
//           You may not use an extra array.
void slideRight(int arr[], int n);

// REQUIRES: there are at least n elements in arr
// MODIFIES: arr
// EFFECTS:  the order of elements in arr is reversed
//           for example, [1,2,3,4,5]
//           would become [5,4,3,2,1]
// NOTE:     You must use traversal by pointer.
//           You may not use an extra array.
void flip(int arr[], int n);

// REQUIRES: there are at least n elements in arr
//           the elements of arr are sorted in ascending order
//           there may be duplicates
// MODIFIES: arr
// EFFECTS:  Returns the number of unique elements and now arr
//           begins with those unique elements in sorted order.
//           The rest of the array doesn't matter.
// NOTE:     You must use traversal by pointer.
//           Your solution must be in-place and run in linear time.
int removeDuplicates(int arr[], int n);
