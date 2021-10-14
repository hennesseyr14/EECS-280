// Ryan Hennessey

/* calc.cpp
*
* RPN calculator
* EECS 280 Project 4
*/

#define NDEBUG

#include "Stack.h"
#include <iostream>
#include <string>
#include <cassert>

using namespace std;

// REQUIRES: stack has at least two elements
// MODIFIES: stack
// EFFECTS:  Adds the top two numbers on the stack
template <typename T>
void add(Stack<T> &stack);

// REQUIRES: stack has at least two elements
// MODIFIES: stack
// EFFECTS:  Subtracts the top two numbers on the stack
template <typename T>
void subtract(Stack<T> &stack);

// REQUIRES: stack has at least two elements
// MODIFIES: stack
// EFFECTS:  Multiplies the top two numbers on the stack
template <typename T>
void multiply(Stack<T> &stack);

// REQUIRES: stack has at least two elements
// MODIFIES: stack
// EFFECTS:  Divides the top two numbers on the stack
template <typename T>
void divide(Stack<T> &stack);

// REQUIRES: stack has at least one element
// MODIFIES: stack
// EFFECTS:  Pushes a duplicate of the top item to the stack
template <typename T>
void duplicate(Stack<T> &stack);

// REQUIRES: stack has at least two elements
// MODIFIES: stack
// EFFECTS:  Reverses the top two items on the stack
template <typename T>
void reverse(Stack<T> &stack);

// REQUIRES: stack has at least one element
// MODIFIES: cout
// EFFECTS:  Prints the top item on the stack
template <typename T>
void print(Stack<T> &stack);

// MODIFIES: stack
// EFFECTS:  Pops all items off the stack
template <typename T>
void clear(Stack<T> &stack);

// MODIFIES: cout
// EFFECTS:  Prints all items on the stack
template <typename T>
void print_all(const Stack<T> &stack);

// REQUIRES: stack has at least one element
// MODIFIES: stack
// EFFECTS:  Negates the top number on the stack
template <typename T>
void _negate(Stack<T> &stack);

int main() {
	// Set output precision
	cout.precision(4);

	// Create stack to hold the numbers from input
	Stack<double> stack;

	// String to hold input
	string input;

	// Read input and preform operations
	while (cin >> input) {
		if (input == "q") {
			break;
		}
		else if (input == "+") {
			add(stack);
		}
		else if (input == "-") {
			subtract(stack);
		}
		else if (input == "*") {
			multiply(stack);
		}
		else if (input == "/") {
			divide(stack);
		}
		else if (input == "d") {
			duplicate(stack);
		}
		else if (input == "r") {
			reverse(stack);
		}
		else if (input == "p") {
			print(stack);
		}
		else if (input == "c") {
			clear(stack);
		}
		else if (input == "a") {
			print_all(stack);
		}
		else if (input == "n") {
			_negate(stack);
		}
		else {
			stack.push(stod(input));
		}
	}

	return 0;
}

template <typename T>
void add(Stack<T> & stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 2);

	double num1 = stack.pop();
	double num2 = stack.pop();
	stack.push(num2 + num1);
}

template <typename T>
void subtract(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 2);

	double num1 = stack.pop();
	double num2 = stack.pop();
	stack.push(num2 - num1);
}

template <typename T>
void multiply(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 2);

	double num1 = stack.pop();
	double num2 = stack.pop();
	stack.push(num2 * num1);
}

template <typename T>
void divide(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 2);

	double num1 = stack.pop();
	double num2 = stack.pop();

	// Check for division by zero
	if (num1 == 0) {
		stack.push(num2);
		stack.push(num1);
		cout << "Error: Division by zero" << endl;
	}

	else {
		stack.push(num2 / num1);
	}
}

template <typename T>
void duplicate(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 1);

	double num1 = stack.pop();
	stack.push(num1);
	stack.push(num1);
}

template <typename T>
void reverse(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 2);

	double num1 = stack.pop();
	double num2 = stack.pop();
	stack.push(num1);
	stack.push(num2);
}

template <typename T>
void print(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 1);

	cout << stack.top() << endl;
}

template <typename T>
void clear(Stack<T> &stack) {
	while (!stack.empty()) {
		stack.pop();
	}
}

template <typename T>
void print_all(const Stack<T> &stack) {
	stack.print(cout);
	cout << endl;
}

template <typename T>
void _negate(Stack<T> &stack) {
	// Check REQUIRES clause
	assert(stack.size() >= 1);

	stack.top() = -stack.top();
}