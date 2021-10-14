// Ryan Hennessey

#include <iostream>
#include <vector>

#include "lab04.h"

/*************************** Employee C-Style ADT ***************************/

// MODIFIES: rec
// EFFECTS: Initializes all fields in EmployeeRecord
void EmployeeRecord_init(EmployeeRecord *rec,
			string in_name, string in_gender, int in_age, int in_rank) {
	rec->name = in_name;
	rec->gender = in_gender;
	rec->age = in_age;
	rec->rank = in_rank;
}

// REQUIRES: rec points to a valid EmployeeRecord
// MODIFIES: rec->rank
// EFFECTS: Increases rank by one
void EmployeeRecord_promote(EmployeeRecord *rec) {
	(rec->rank)++;
}

// REQUIRES: rec points to a valid EmployeeRecord
// MODIFIES: rec->rank
// EFFECTS: Decreases rank by one
void EmployeeRecord_demote(EmployeeRecord *rec) {
	(rec->rank)--;
}

// REQUIRES: rec points to a valid EmployeeRecord
// EFFECTS: Prints Name, Gender, Age and Rank in rec
void EmployeeRecord_print(const EmployeeRecord *rec) {
	cout << "NAME: " << rec->name << ", GENDER: " << rec->gender << ", AGE: "
			 << rec->age << ", RANK: " << rec->rank << endl;
}



/***************************** Employee C++ ADT *****************************/

// Constructor
// MODIFIES: this
// EFFECTS: Sets employee with name, gender, age and rank information
Employee::Employee(string in_name, string in_gender, int in_age, int in_rank) {
	name = in_name;
	gender = in_gender;
	age = in_age;
	rank = in_rank;
}

// MODIFIES: rank
// EFFECTS: Increases rank by one
void Employee::promote() {
	rank++;
}

// MODIFIES: rank
// EFFECTS: Decreases rank by one
void Employee::demote() {
	rank--;
}

// EFFECTS: Prints out info
void Employee::print() {
		cout << "NAME: " << name << ", GENDER: " << gender << ", AGE: " << age
				 << ", RANK: " << rank << endl;
}


/*********************************** MAIN ***********************************/

int main() {
	vector<EmployeeRecord> eecsSoft;

	// TASK 3 - Add 2 EmployeeRecords to the eecsSoft vector
	EmployeeRecord Paul;
	EmployeeRecord_init(&Paul, "Paul Hennessey", "male", 58, 100);
	eecsSoft.push_back(Paul);

	EmployeeRecord Janet;
	EmployeeRecord_init(&Janet, "Janet Piazza", "female", 57, 100);
	eecsSoft.push_back(Janet);

	cout << "Welcome to eecsSoft! Here are our loyal employees: " << endl;
	for (int i = 0; i < (int) eecsSoft.size(); ++i) {
		EmployeeRecord_print(&eecsSoft[i]);
	}

	// TASK 3 - Promote one eecsSoft employee and demote the other
	EmployeeRecord_promote(&eecsSoft[0]);
	EmployeeRecord_demote(&eecsSoft[1]);

	cout << "Here is the new info for the employees of eecsSoft: " << endl;
	for (int i = 0; i < (int) eecsSoft.size(); ++i) {
		EmployeeRecord_print(&eecsSoft[i]);
	}

	vector<Employee> umichWorks;

	// TASK 3 - Add 2 Employees to the umichWorks vector
	Employee Michelle("Michelle Hennessey", "female", 20, 50);
	umichWorks.push_back(Michelle);

	Employee Elise("Elise Hennessey", "female", 20, 50);
	umichWorks.push_back(Elise);

	cout << "Welcome to umichWorks! Here are our loyal employees: " << endl;
	for (int i = 0; i < (int) umichWorks.size(); ++i) {
		umichWorks[i].print();
	}

	// TASK 3 - Promote one umichWorks employee and demote the other
	umichWorks[0].promote();
	umichWorks[1].demote();

	cout << "Here is the new info for the employees of umichWorks: " << endl;
	for (int i = 0; i < (int) umichWorks.size(); ++i) {
		umichWorks[i].print();
	}

	return 0;
}
