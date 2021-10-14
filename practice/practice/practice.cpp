#include <iostream>
#include <string>
#include <sstream>

using namespace std;

// arguments: ./main.exe hello world
int main(int argc, char *argv[]) {
	++argv;
	cout << *argv << endl;
	cout << **argv << endl;
	cout << *(argv + 1) << endl;
	cout << (*argv + 1) << endl;
}