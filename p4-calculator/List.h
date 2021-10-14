// Ryan Hennessey

#ifndef LIST_H
#define LIST_H
/* List.h
 *
 * doubly-linked, double-ended list with Iterator interface
 * EECS 280 Project 4
 */

#include <iostream>
#include <cassert> //assert
#include <cstddef> //NULL


template <typename T>
class List {
  //OVERVIEW: a doubly-linked, double-ended list with Iterator interface
public:

  //EFFECTS:  returns true if the list is empty
  bool empty() const;

  //EFFECTS: returns the number of elements in this List
  int size() const;

  //REQUIRES: list is not empty
  //EFFECTS: Returns the first element in the list by reference
  T & front();

  //REQUIRES: list is not empty
  //EFFECTS: Returns the last element in the list by reference
  T & back();

  //EFFECTS:  inserts datum into the front of the list
  void push_front(const T &datum);

  //EFFECTS:  inserts datum into the back of the list
  void push_back(const T &datum);

  //REQUIRES: list is not empty
  //MODIFIES: may invalidate list iterators
  //EFFECTS:  removes the item at the front of the list
  void pop_front();

  //REQUIRES: list is not empty
  //MODIFIES: may invalidate list iterators
  //EFFECTS:  removes the item at the back of the list
  void pop_back();

  // You should add in a default constructor, destructor, copy constructor,
  // and overloaded assignment operator, if appropriate. If these operations
  // will work correctly without defining these, you can omit them. A user
  // of the class must be able to create, copy, assign, and destroy Lists

  // EFFECTS:  List default constructor. Makes an empty list
  List();

  // EFFECTS:  List destructor
  ~List();

  // EFFECTS:  List copy constructor. Initializes one list to another
  List(const List &other);

  // MODIFIES: Lhs List
  // EFFECTS:  List overloaded assignment operator. Copies one list to another
  List & operator= (const List &rhs);

private:
  //a private type
  struct Node {
    Node *next;
    Node *prev;
    T datum;
  };

  //REQUIRES: list is empty
  //EFFECTS:  copies all nodes from other to this
  void copy_all(const List<T> &other);

  //MODIFIES: may invalidate list iterators
  //EFFECTS:  removes all nodes
  void pop_all();

  Node *first;   // points to first Node in list, or nullptr if list is empty
  Node *last;    // points to last Node in list, or nullptr if list is empty

public:
  ////////////////////////////////////////
  class Iterator {
    //OVERVIEW: Iterator interface to List

    // You should add in a default constructor, destructor, copy constructor,
    // and overloaded assignment operator, if appropriate. If these operations
    // will work correctly without defining these, you can omit them. A user
    // of the class must be able to create, copy, assign, and destroy Iterators.

    // Your iterator should implement the following public operators: *,
    // ++ (prefix), default constructor, == and !=.

  public:
    // This operator will be used to test your code. Do not modify it.
    // Requires that the current element is dereferenceable.
    Iterator& operator--() {
      assert(node_ptr);
      node_ptr = node_ptr->prev;
      return *this;
    }

	// EFFECTS:  Dereferences an Iterator
	T& operator* () const;

	// EFFECTS:  Increments an Iterator
	Iterator& operator++ ();

	// EFFECTS:  Default Iterator constructor
	Iterator();

	// EFFECTS:  Returns true if two Iterators are equal
	bool operator== (Iterator rhs) const;

	// EFFECTS:  Returns true if two Iterators are not equal
	bool operator!= (Iterator rhs) const;

  private:
    Node *node_ptr; //current Iterator position is a List node
    // add any additional necessary member variables here

    // add any friend declarations here
	friend class List;

    // construct an Iterator at a specific position
    Iterator(Node *p);

  };//List::Iterator
  ////////////////////////////////////////

  // return an Iterator pointing to the first element
  Iterator begin() const {
    return Iterator(first);
  }

  // return an Iterator pointing to "past the end"
  Iterator end() const;

  //REQUIRES: i is a valid, dereferenceable iterator associated with this list
  //MODIFIES: may invalidate other list iterators
  //EFFECTS: Removes a single element from the list container
  void erase(Iterator i);

  //REQUIRES: i is a valid iterator associated with this list
  //EFFECTS: inserts datum before the element at the specified position.
  void insert(Iterator i, const T &datum);

};//List


////////////////////////////////////////////////////////////////////////////////
// Add your member function implementations below or in the class above
// (your choice). Do not change the public interface of List, although you
// may add the Big Three if needed.  Do add the public member functions for
// Iterator.

template <typename T>
bool List<T>::empty() const {
	return !first;
}

template <typename T>
int List<T>::size() const {
	int size = 0;
	for (Node *i = first; i != nullptr; i = i->next) {
		++size;
	}
	return size;
}

template <typename T>
T & List<T>::front() {
	// Check REQUIRES clause
	assert(!empty());

	return first->datum;
}

template <typename T>
T & List<T>::back() {
	// Check REQUIRES clause
	assert(!empty());

	return last->datum;
}

template <typename T>
void List<T>::push_front(const T &datum) {
	// Create a new node for the list
	Node *p = new Node;
	p->datum = datum;
	p->next = first;
	p->prev = nullptr;

	// Set first
	first = p;

	// Set last to p if the list was empty
	if (!last) {
		last = p;
	}

	// Link p into the list
	else {
		p->next->prev = p;
	}
}

template <typename T>
void List<T>::push_back(const T &datum) {
	// Create a new node for the list
	Node *p = new Node;
	p->datum = datum;
	p->next = nullptr;
	p->prev = last;

	// Set last
	last = p;

	// Set first if the list was empty
	if (!first) {
		first = p;
	}

	// Link p into the list
	else {
		p->prev->next = p;
	}
}

template <typename T>
void List<T>::pop_front() {
	// Check REQUIRES clause
	assert(!empty());

	Node *victim = first;

	// Update first
	first = first->next;

	// Re-link list if it is not empty
	if (first) {
		first->prev = nullptr;
	}

	// Set last if the list is empty
	else {
		last = nullptr;
	}

	delete victim;
}

template <typename T>
void List<T>::pop_back() {
	// Check REQUIRES clause
	assert(!empty());

	Node *victim = last;

	// Update last
	last = last->prev;

	// Re-link list if it is not empty
	if (last) {
		last->next = nullptr;
	}

	// Set first if the list is empty
	else {
		first = nullptr;
	}

	delete victim;
}

template <typename T>
List<T>::List() : first(nullptr), last(nullptr) {}

template <typename T>
List<T>::~List() {
	pop_all();
}

template <typename T>
List<T>::List(const List &other) : first(nullptr), last(nullptr) {
	copy_all(other);
}

template <typename T>
List<T> & List<T>::operator= (const List &rhs) {
	// Check for self-assignment
	if (this == &rhs) {
		return *this;
	}

	pop_all();
	copy_all(rhs);
	return *this;
}

template <typename T>
void List<T>::copy_all(const List<T> &other) {
	// Check REQUIRES clause
	assert(empty());

	last = nullptr;
	for (Node *p = other.first; p != nullptr; p = p->next) {
		// Create a new node for the list
		Node *q = new Node;
		q->datum = p->datum;
		q->next = nullptr;
		q->prev = last;

		// Set first and last if the list was empty
		if (!last) {
			first = last = q;
		}

		// Update last to be the current node and link it into the list
		else {
			last->next = q;
			last = q;
		}
	}
}

template <typename T>
void List<T>::pop_all() {
	while (!empty()) {
		pop_front();
	}
}

template <typename T>
T& List<T>::Iterator::operator* () const {
	// Check REQUIRES clause
	assert(node_ptr);

	return node_ptr->datum;
}

template <typename T>
typename List<T>::Iterator& List<T>::Iterator::operator++ () {
	// Check REQUIRES clause
	assert(node_ptr);

	node_ptr = node_ptr->next;
	return *this;
}

template <typename T>
List<T>::Iterator::Iterator() : node_ptr(nullptr) {}

template <typename T>
bool List<T>::Iterator::operator== (Iterator rhs) const {
	return node_ptr == rhs.node_ptr;
}

template <typename T>
bool List<T>::Iterator::operator!= (Iterator rhs) const {
	return node_ptr != rhs.node_ptr;
}

template <typename T>
List<T>::Iterator::Iterator(Node *p) : node_ptr(p) {}

template <typename T>
typename List<T>::Iterator List<T>::end() const {
	return Iterator();
}

template <typename T>
void List<T>::erase(Iterator i) {
	// Check REQUIRES clause
	assert(i.node_ptr);

	// Erasing from the front of the list
	if (i.node_ptr == first) {
		pop_front();
	}

	// Erasing from the back of the list
	else if (i.node_ptr == last) {
		pop_back();
	}

	// Erasing from the middle of the list
	else {
		i.node_ptr->prev->next = i.node_ptr->next;
		i.node_ptr->next->prev = i.node_ptr->prev;
		delete i.node_ptr;
	}
}

template <typename T>
void List<T>::insert(Iterator i, const T &datum) {
	// Inserting into the front of the list
	if (i.node_ptr == first) {
		push_front(datum);
	}

	// Inserting into the back of the list
	else if (!i.node_ptr) {
		push_back(datum);
	}

	// Inserting into the back of the list
	else {
		Node *p = new Node;
		p->datum = datum;
		p->next = i.node_ptr;
		p->prev = i.node_ptr->prev;
		i.node_ptr->prev->next = p;
		i.node_ptr->prev = p;
	}
}

#endif
