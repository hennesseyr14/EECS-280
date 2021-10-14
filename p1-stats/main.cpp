/* main.cpp
*
* Ryan Hennessey
* rjhenn@umich.edu
*
* Program to read in file/column and print out statistics
*
* EECS 280 Project 1
*
*/

#include "stats.h"
#include "p1_library.h"
#include <iostream>

#include <string>

using namespace std;

int main() {
	// Prompt user for filename and read in
	string filename;
    cout << "enter a filename" << endl;
	cin >> filename;

	// Prompt user for column name and read in
	string column;
	cout << "enter a column name" << endl;
	cin >> column;

	// Print informational message about column and file
	cout << "reading column " << column << " from " << filename << endl;
	
	// Read in column
	vector<double> data = extract_column(filename, column);
	
	// Print summary of data
	vector<vector<double>> summary = summarize(data);
	cout << "Summary (value: frequency)" << endl;
	for (auto i:summary) {
		cout << i[0] << ": " << i[1] << endl;
	}
	cout << endl;
	
	// Print statistics
	cout << "count = " << count(data) << endl;
	cout << "sum = " << sum(data) << endl;
	cout << "mean = " << mean(data) << endl;
	cout << "stdev = " << stdev(data) << endl;
	cout << "median = " << median(data) << endl;
	cout << "mode = " << mode(data) << endl;
	cout << "min = " << min(data) << endl;
	cout << "max = " << max(data) << endl;
	cout << "  0th percentile = " << percentile(data, 0.0) << endl;
	cout << " 25th percentile = " << percentile(data, 0.25) << endl;
	cout << " 50th percentile = " << percentile(data, 0.50) << endl;
	cout << " 75th percentile = " << percentile(data, 0.75) << endl;
	cout << "100th percentile = " << percentile(data, 1.00) << endl;
	
	return 0;
}