// Ryan Hennessey

#include <iostream>
#include <cassert>
#include <string>

#include "ArrayIntVector.h"

using namespace std;

//EFFECTS: Constructs an empty ArrayIntVector with initial capacity
//         DEFAULT_CAPACITY.
ArrayIntVector::ArrayIntVector()
    : ArrayIntVector(DEFAULT_CAPACITY)
{
}

//EFFECTS: Constructs an empty ArrayIntVector with the specified capacity.
ArrayIntVector::ArrayIntVector(int init_capacity)
    : data(new int[init_capacity]), capacity(init_capacity), num_elts(0)
{
}

// Copy Constructor
//EFFECTS: Constructs an ArrayIntVector with the same contents as other.
ArrayIntVector::ArrayIntVector(const ArrayIntVector& other)
  // TASK 1 - USE INITIALIZER LIST
	: capacity(other.capacity), num_elts(other.num_elts)
{
  // TASK 1 - YOUR CODE HERE
	int *arr = new int[other.capacity];
	for (int i = 0; i < other.num_elts; ++i) {
		arr[i] = other.data[i];
	}
	data = arr;
}

// Assignment Operator
//MODIFIES: this IntVector
//EFFECTS: Make a copy of the contents of other into this.
ArrayIntVector& ArrayIntVector::operator=(const ArrayIntVector &rhs) {
  // TASK 2 - YOUR CODE HERE
	if (this == &rhs) {
		return *this;
	}

	delete[] data;
	
	capacity = rhs.capacity;
	num_elts = rhs.num_elts;
	
	int *arr = new int[capacity];
	for (int i = 0; i < num_elts; ++i) {
		arr[i] = rhs.data[i];
	}
	data = arr;

  return *this;
}

// Destructor
ArrayIntVector::~ArrayIntVector() {
  delete[] data;
}

//MODIFIES: this IntVector
//EFFECTS:  Adds value to the end of this IntVector.
void ArrayIntVector::push_back(int value) {
  if (num_elts >= capacity) grow();
  data[num_elts++] = value;
}

//REQUIRES: this IntVector is not empty
//MODIFIES: this IntVector
//EFFECTS:  Removes the last element in this IntVector.
void ArrayIntVector::pop_back() {
  assert(!empty());
  --num_elts;
}

//REQUIRES: 0 <= index < number of elements in this IntVector
//EFFECTS:  Returns (by reference) the element at the given index.
int &ArrayIntVector::at(int index) {
  assert(0 <= index && index <= size());
  return data[index];
}

//REQUIRES: 0 <= index < number of elements in this IntVector
//EFFECTS:  Returns (by reference) the element at the given index.
const int &ArrayIntVector::at(int index) const {
  assert(0 <= index && index <= size());
  return data[index];
}

//EFFECTS:  Returns the number of elements of this IntVector.
int ArrayIntVector::size() const {
  return num_elts;
}

//EFFECTS:  Returns true if this IntVector is empty, false otherwise.
bool ArrayIntVector::empty() const {
  return num_elts == 0;
}

//EFFECTS:  Prints to os all elements in this IntVector in the format:
//          "[ 1, 2, 3, 4, 5 ]" (Note that there is no trailing newline)
void ArrayIntVector::print(std::ostream &os) const {
  os << "[ ";
  for (int i = 0; i < num_elts; i++) {
    os << data[i];
    if (i < num_elts - 1) {
      os << ", ";
    }
  }
  os << " ]";
}

// EFFECTS: Doubles the storage capacity of this ArrayIntVector.
//          More precisely:
//            1. doubles capacity
//            2. allocates a new dynamic array with the new capacity
//            3. copies over the elements from the old data array
//            4. free the memory for the old data array
//            5. sets data to point to the new array
void ArrayIntVector::grow() {
  capacity *= 2;
  int* new_data = new int[capacity];

  for (int i = 0; i < num_elts; ++i)
    new_data[i] = data[i];

  delete[] data;
  data = new_data;
}

//EFFECTS:  Prints to os all elements in the IntVector in the format:
//          "[ 1, 2, 3, 4, 5 ]" (Note that there is no trailing newline)
std::ostream &operator<<(std::ostream &os, const ArrayIntVector &v) {
  v.print(os);
  return os;
}
