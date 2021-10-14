// Ryan Hennessey

#include <iostream>
#include <cassert>

#include "IntVector.h"

using namespace std;

// Default constructor.
//EFFECTS: Constructs an empty IntVector.
IntVector::IntVector() : num_elts(0) {}

//REQUIRES: this IntVector is not full
//MODIFIES: this IntVector
//EFFECTS:  Adds value to the end of this IntVector.
void IntVector::push_back(int value) {
	assert(check_invariant());
	assert(!full());
	data[num_elts++] = value;
	assert(check_invariant());
}

//REQUIRES: this IntVector is not empty
//MODIFIES: this IntVector
//EFFECTS:  Removes the last element in this IntVector.
void IntVector::pop_back() {
	assert(check_invariant());
	assert(!empty());
	--num_elts;
	assert(check_invariant());
}

//REQUIRES: 0 <= index < number of elements in this IntVector
//EFFECTS:  Returns (by reference) the element at the given index.
int &IntVector::at(int index) {
	assert(check_invariant());
	assert(0 <= index && index < num_elts);
	return data[index];
}

//REQUIRES: 0 <= index < number of elements in this IntVector
//EFFECTS:  Returns (by reference) the element at the given index.
const int &IntVector::at(int index) const {
	assert(check_invariant());
	assert(0 <= index && index < num_elts);
	return data[index];
}

//REQUIRES: 0 <= index < number of elements in this IntVector
//EFFECTS:  Returns (by reference) the element at the given index.
int &IntVector::operator[](int index) {
	assert(check_invariant());
	assert(0 <= index && index < num_elts);
	return data[index];
}

//REQUIRES: 0 <= index < number of elements in this IntVector
//EFFECTS:  Returns (by reference) the element at the given index.
const int &IntVector::operator[](int index) const {
	assert(check_invariant());
	assert(0 <= index && index < num_elts);
	return data[index];
}

//EFFECTS:  Returns the number of elements of this IntVector.
int IntVector::size() const {
	assert(check_invariant());
    return num_elts;
}

//EFFECTS:  Returns true if this IntVector is empty, false otherwise.
bool IntVector::empty() const {
	assert(check_invariant());
    return num_elts == 0;
}

//EFFECTS:  Returns true if this IntVector is at capacity, false otherwise.
//          That is, you may add elements if and only if full() is false.
bool IntVector::full() const {
	assert(check_invariant());
    return num_elts == CAPACITY;
}

//EFFECTS:  Prints to os all elements in this IntVector in the format:
//          "[ 1, 2, 3, 4, 5 ]" (Note that there is no trailing newline)
void IntVector::print(ostream &os) const {
	assert(check_invariant());
	os << "[ ";
	for (int i = 0; i < num_elts; i++) {
		os << data[i];
		if (i < num_elts - 1) {
			os << ", ";
		}
		else {
			os << " ";
		}
	}
	os << "]";
	assert(check_invariant());
}

//EFFECTS:  Returns true if the representation invariant holds.
//          For IntVector, the only invariant is 0 <= num_elts <= CAPACITY.
bool IntVector::check_invariant() const {
	return (0 <= num_elts && num_elts <= CAPACITY);
}

//EFFECTS:  Prints to os all elements in the IntVector in the format:
//          "[ 1, 2, 3, 4, 5 ]" (Note that there is no trailing newline)
ostream &operator<<(ostream & os, const IntVector &v) {
	os << "[ ";
	for (int i = 0; i < v.size(); i++) {
		os << v[i];
		if (i < v.size() - 1) {
			os << ", ";
		}
		else {
			os << " ";
		}
	}
	os << "]";
	
    // Always return the stream at end of the insertion operator
    return os;
}
