#ifndef ARRAYINTVECTOR_H
#define ARRAYINTVECTOR_H

#include <iostream>

class ArrayIntVector {
  // Container that provides random access to any element by an index.
  // An ArrayIntVector can hold arbitrarily many elements.

public:
  //EFFECTS: Constructs an empty ArrayIntVector with initial capacity
  //         DEFAULT_CAPACITY.
  ArrayIntVector();

  //EFFECTS: Constructs an empty ArrayIntVector with the specified capacity.
  ArrayIntVector(int init_capacity);

  // Copy Constructor
  //EFFECTS: Constructs an ArrayIntVector with the same contents as other.
  ArrayIntVector(const ArrayIntVector& other);

  // Assignment Operator
  //MODIFIES: this IntVector
  //EFFECTS: Make a copy of the contents of other into this.
  ArrayIntVector& operator=(const ArrayIntVector &rhs);

  // Destructor
  ~ArrayIntVector();

  //MODIFIES: this IntVector
  //EFFECTS:  Adds value to the end of this IntVector.
  void push_back(int value);

  //REQUIRES: this IntVector is not empty
  //MODIFIES: this IntVector
  //EFFECTS:  Removes the last element in this IntVector.
  void pop_back();

  //REQUIRES: 0 <= index < number of elements in this IntVector
  //EFFECTS:  Returns (by reference) the element at the given index.
  int &at(int index);

  //REQUIRES: 0 <= index < number of elements in this IntVector
  //EFFECTS:  Returns (by reference) the element at the given index.
  const int &at(int index) const;

  //REQUIRES: 0 <= index < number of elements in this IntVector
  //EFFECTS:  Returns (by reference) the element at the given index.
  int &operator[](int index) { return at(index); }

  //REQUIRES: 0 <= index < number of elements in this IntVector
  //EFFECTS:  Returns (by reference) the element at the given index.
  const int &operator[](int index) const { return at(index); }

  //EFFECTS:  Returns the number of elements of this IntVector.
  int size() const;

  //EFFECTS:  Returns true if this IntVector is empty, false otherwise.
  bool empty() const;

  //EFFECTS:  Prints to os all elements in this IntVector in the format:
  //          "[ 1, 2, 3, 4, 5 ]" (Note that there is no trailing newline)
  void print(std::ostream &os) const;

  // Initial capacity of default-constructed ArrayIntVectors.
  static const int DEFAULT_CAPACITY = 10;

private:
  // EFFECTS: Doubles the storage capacity of this ArrayIntVector.
  //          More precisely:
  //            1. doubles capacity
  //            2. allocates a new dynamic array with the new capacity
  //            3. copies over the elements from the old data array
  //            4. free the memory for the old data array
  //            5. sets data to point to the new array
  void grow();

  // A pointer to an (dynamically allocated) array to hold the N elements
  // stored in this vector, in the first N slots. If the number of elements
  // exceeds its current capacity, data will be reallocated.
  // INVARIANT: data != nullptr (it is a valid pointer)
  int *data;

  // The maximum number of elements data can currently hold.
  // INVARIANT: 0 <= capacity
  int capacity;

  // The number of elements in the IntVector.
  // INVARIANT: 0 <= num_elts <= capacity
  int num_elts;
};

//EFFECTS:  Prints to os all elements in the IntVector in the format:
//          "[ 1, 2, 3, 4, 5 ]" (Note that there is no trailing newline)
std::ostream &operator<<(std::ostream &os, const ArrayIntVector &v);

#endif
