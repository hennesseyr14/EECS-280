#ifndef LAB09_H
#define LAB09_H

#include <iostream>
#include <algorithm>
#include <string>

/*********************************** Person ***********************************/
class Person {
private:
  std::string name;
  int age;

public:
  //Constructor
  //EFFECTS:  Sets person to have name and age information
  Person(const std::string &name_in, int age_in)
    : name(name_in), age(age_in) {}

  //EFFECTS:  Returns this person's name
  const std::string & get_name() const { return name; }

  //EFFECTS:  Returns this person's age
  int get_age() const { return age; }
};

/****************************** Helper Functions ******************************/

//EFFECTS:  returns whether a's name is before b's (alphabetically)
bool compare_name(const Person &a, const Person &b);

//EFFECTS:  returns whether a's age is strictly smaller than b's
bool compare_age(const Person &a, const Person &b);

//REQUIRES: arr points to an array of size n > 0
//EFFECTS:  returns a pointer to the maximum person in arr according to comp
template <typename Comp>
const Person * find_max(const Person *arr, int n, Comp comp){
  return std::max_element(arr, arr + n, comp);
}

//REQUIRES: arr points to an array of size n > 0
//EFFECTS:  prints the name of every person in arr for which pred returns true
template <typename Predicate>
void print_if(const Person *arr, int n, Predicate pred){
  for (int i = 0; i < n; ++i){
    if (pred(arr[i])) {
      std::cout << arr[i].get_name() << ", " << arr[i].get_age() << std::endl;
    }
  }
}

#endif /* LAB09_H */
