#include <cstdlib>
#include <iostream>

using namespace std;

int main() {
	char strD[8] = {'h','e','y','\0','y','o','u','\0'};
	cout << strD + 4;

	cout << endl;

	char strC[6] = "tiger";
	cout << strC + 6;
}