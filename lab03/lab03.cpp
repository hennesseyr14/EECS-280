// Ryan Hennessey

#include <iostream>
#include <fstream>
#include <string>
#include <cassert>

#include <cstring>

#include <cstdlib>

using namespace std;

// REQUIRES: str1 and str2 point to C-strings
// EFFECTS:  If str1 and str2 contain exactly the same characters, returns 0.
//           Otherwise, return a positive number if the first differing char
//           has a greater value in str1 than in str2 and a negative number in
//           the opposite case (you may NOT call strcmp).
int strcmp_eecs280(const char *str1, const char *str2){
	const char *str = str1;
	if (strlen(str2) > strlen(str1)) {
		str = str2;
	}
	for (int i = 0; i < (int) strlen(str); ++i) {
		if (*str1 > *str2) {
			return 1;
		}
		else if (*str1 < *str2) {
			return -1;
		}
		++str1;
		++str2;
	}
    return 0;
}

// EFFECTS:  Prints "Please enter a word: " to prompt the user to enter a word
//           and then reads a word from cin to be returned. After reading the
//           input, clean up by printing a newline to cout.
string get_user_word(){
	cout << "Please enter a word: ";
	string word;
	cin >> word;
	cout << endl;
	return word;
}



// EFFECTS:  Opens the file "words.txt" and looks for the word passed in as a
//           parameter, returning true if found and false otherwise. If it
//           cannot be opened, it prints an error message and calls exit(1).
// NOTE:     You MUST use the strcmp_eecs280 function (NOT strcmp).
bool find_word(string word){
	ifstream file;
	file.open("words.txt");
	if (!file.is_open()) {
		cout << "Error";
		exit(1);
	}
	string fileword;
	
	while (file >> fileword) {
		if (strcmp_eecs280(fileword.c_str(), word.c_str()) == 0) {
			file.close();
			return true;
		}
	}
	file.close();
	return false;
}


/********************* DO NOT MODIFY CODE BELOW THIS LINE *********************/

void test_strcmp_eecs280() {
  assert(strcmp_eecs280("turtle", "frog") > 0);
  assert(strcmp_eecs280("turtle", "turtles") < 0);
  assert(strcmp_eecs280("", "frog") < 0);
  assert(strcmp_eecs280("lizard", "lizard") == 0);
}

int main(){
  test_strcmp_eecs280();

  cout << "Welcome to eecs280 spell checker!" << endl;
  cout << "You may quit at any time by typing \"quit\"." << endl;

  string user_word = get_user_word();

  while (user_word != "quit"){

    if (find_word(user_word)) {
      cout << "It appears " << user_word << " is spelled correctly!" << endl;

    } else {
      cout << "Oops. " << user_word << " is not correctly spelled." << endl;
    }

    user_word = get_user_word();
  }

  cout << "See you again soon. Happy spelling!" << endl;

  return 0;
}
