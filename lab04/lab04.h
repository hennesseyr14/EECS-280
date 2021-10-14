#include <string>

using namespace std;

/*************************** Employee C-Style ADT ***************************/
struct EmployeeRecord {
	string name;
	string gender;
	int age;
	int rank;
};

// MODIFIES: rec
// EFFECTS: Initializes all fields in EmployeeRecord
void EmployeeRecord_init(EmployeeRecord *rec,
			string in_name, string in_gender, int in_age, int in_rank);

// REQUIRES: rec points to a valid EmployeeRecord
// MODIFIES: rec->rank
// EFFECTS: Increases rank by one
void EmployeeRecord_promote(EmployeeRecord *rec);

// REQUIRES: rec points to a valid EmployeeRecord
// MODIFIES: rec->rank
// EFFECTS: Decreases rank by one
void EmployeeRecord_demote(EmployeeRecord *rec);

// REQUIRES: rec points to a valid EmployeeRecord
// EFFECTS: Prints Name, Gender, Age and Rank in rec
void EmployeeRecord_print(const EmployeeRecord *rec);



/***************************** Employee C++ ADT *****************************/
class Employee {
private:
	string name;
	string gender;
	int age;
	int rank;

public:
	// Constructor
	// MODIFIES: this
	// EFFECTS: Sets employee with name, gender, age and rank information
	Employee(string in_name, string in_gender, int in_age, int in_rank);

	// MODIFIES: rank
	// EFFECTS: Increases rank by one
	void promote();

	// MODIFIES: rank
	// EFFECTS: Decreases rank by one
	void demote();

	// EFFECTS: Prints out info
	void print();
};
