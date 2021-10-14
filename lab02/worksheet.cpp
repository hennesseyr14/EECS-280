using namespace std;

#include <iostream>

/*
int main() {
	int x = 1;
	int y = 2;
	int z = 3;

	int *x_ptr = &x;
	++(*x_ptr);

	z = *x_ptr;
	++(*x_ptr);

	int *ptr = &y;
	*ptr = *x_ptr + z;
}
*/

/*
int main() {
	int arr[7] = { 3, 5, 4, -2, 3, 1, 0 };

	int *ptr = arr;
	while (ptr < arr + 7) {
		cout << ptr << ": " << *ptr << endl;
		ptr = ptr + *ptr;
	}
}
*/

int main() {
	int num1 = 42;
	int* num_ptr1 = &num1;
	int** ptr_ptr = &num_ptr1;
	int* num_ptr2 = num_ptr1;
	int num2 = 17;
	*ptr_ptr = &num2;
	ptr_ptr = &num_ptr2;
	// Breakpoint
}
