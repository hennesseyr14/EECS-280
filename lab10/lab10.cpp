// Ryan Hennessey

#include <iostream>

#include "lab10.h"

using namespace std;

// REQUIRES: n >= 1
// EFFECTS: Prints the hailstone sequence starting at n
// NOTE:    Uses tail recursion
void hailstone(int n) {
  // TASK 1 - YOUR CODE HERE
	cout << n << " ";
	if (n == 1) return;
	if (n % 2 == 0) n /= 2;
	else n = 3 * n + 1;
	hailstone(n);
}

// REQUIRES: n >= 1
// EFFECTS: Prints the hailstone sequence starting at n
// NOTE:    Uses iteration
void hailstone_iter(int n) {
  // TASK 1 - YOUR CODE HERE
	while (n != 1) {
		cout << n << " ";
		if (n % 2 == 0) n /= 2;
		else n = 3 * n + 1;
	}
	cout << n << " ";
}

// REQUIRES: 0 <= digit <= 9, n >= 0
// EFFECTS: Returns the number of times digit appears in n
// NOTE:    Uses recursion
int count_digits(int n, int digit) {
  // TASK 2 - YOUR CODE HERE
	int count = 0;
	if (n % 10 == digit) ++count;
	n /= 10;
	if (n == 0) return count;
	return count + count_digits(n, digit);
}

// REQUIRES: 0 <= digit <= 9, n >= 0
// EFFECTS: Returns the number of times digit appears in n
// NOTE:    Uses iteration
int count_digits_iter(int n, int digit) {
  // TASK 2 - YOUR CODE HERE
	int count = 0;
	if (n % 10 == digit) ++count;
	n /= 10;
	while (n != 0) {
		if (n % 10 == digit) ++count;
		n /= 10;
	}
	return count;
}

// REQUIRES 0 <= digit <= 9, n >= 0
// EFFECTS: Returns count + the number of times digit appears in n
// NOTE:    Uses tail recursion
static int count_digits_helper(int n, int digit, int count) {
  // TASK 2 - YOUR CODE HERE
	if (n % 10 == digit) ++count;
	n /= 10;
	if (n == 0) return count;
	return count_digits_helper(n, digit, count);
}

// REQUIRES: 0 <= digit <= 9, n >= 0
// EFFECTS: Returns the number of times digit appears in n
// NOTE:    Uses tail recursion
int count_digits_tail(int n, int digit) {
  return count_digits_helper(n, digit, 0);
}
