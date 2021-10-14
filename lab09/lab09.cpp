#include <iostream>

#include "lab09.h"

using namespace std;

/********************************** Functors **********************************/

class CompareName {
public:
  bool operator()(const Person &a, const Person &b) const {
    return compare_name(a, b); // TASK 1 - YOUR CODE HERE
  }
};

class CompareAge {
public:
  bool operator()(const Person &a, const Person &b) const {
    return compare_age(a, b); // TASK 1 - YOUR CODE HERE
  }
};

class IsAgeN {
public:
  //TASK 2 - YOUR CODE HERE
	IsAgeN(int age_in) : age(age_in) {}
	bool operator()(const Person &a) const {
		return age == a.get_age();
	}

private:
  int age;
};

/****************************** Helper Functions ******************************/

//EFFECTS:  returns whether a's name is before b's (alphabetically)
bool compare_name(const Person &a, const Person &b) {
  return a.get_name() < b.get_name();
}

//EFFECTS:  returns whether a's age is strictly smaller than b's
bool compare_age(const Person &a, const Person &b) {
  return a.get_age() < b.get_age();
}

/************************************ MAIN ************************************/
int main() {
  const int N = 5;

  Person people[N] = {
    { "Drew", 16 },
    { "Cathy", 34 },
    { "Alice", 16 },
    { "Ernest", 29 },
    { "Bob", 21 }
  };

  cout << "The people we are considering are:" << endl;
  for (Person *ptr = people; ptr < people + N; ++ptr) {
    cout << ptr->get_name() << ", " << ptr->get_age() << endl;
  }
  cout << endl;

  const Person *last = nullptr;
  const Person *oldest = nullptr;

  // TASK 1 - YOUR CODE HERE
  last = find_max(people, N, CompareName());
  oldest = find_max(people, N, CompareAge());

  cout << "The last person alphabetically is: " << last->get_name() << endl;
  cout << "The oldest person is: " << oldest->get_name() << endl;

  cout << endl;

  cout << "The people with 16 are:" << endl;

  // TASK 2 - YOUR CODE HERE
  print_if(people, N, IsAgeN(16));
}
