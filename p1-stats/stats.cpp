/* stats.cpp
 *
 * Ryan Hennessey
 * rjhenn@umich.edu
 *
 * Implementation of statistics library
 *
 * EECS 280 Project 1
 *
 */

#include "stats.h"
#include <cassert>
#include <vector>
#include "p1_library.h"
#include <cmath>
using namespace std;

const double EPSILON = 0.0001;

vector<vector<double> > summarize(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	sort(v);
	// Create summary vector to return
	vector<vector<double>> summary;
	// Create vector to keep track of values that have been counted
	vector<double> values = {};
	
	// Count frequency of each number in vector
	for (auto i:v) {
		double frequency = 0.0;

		// Verify that number is not a repeat
		bool repeated = false;
		for (auto j:values) {
			if (abs(i - j) < EPSILON) {
				repeated = true;
			}
		}

		// For new values, calculate frequency and update vectors
		if (!repeated) {
			for (auto k:v) {
				if (abs(i - k) < EPSILON) {
					frequency++;
				}
			}
			summary.push_back({i, frequency});
			values.push_back(i);
		}
		
	}
    return summary;
}

int count(vector<double> v) {
	int size = 0;
	for (int i = 0; i < (int)v.size(); i++) {
		size++;
	}
	return size;
}

double sum(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	double total = 0;
	for (auto i:v) {
		total += i;
	}
	return total;
}

double mean(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	return sum(v) / count(v);
}

double median(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	sort(v);
	int size = count(v);
	// Return mean of two middle values for even-sized vector
	if (size % 2 == 0) {
		return (v[size / 2 - 1] + v[size / 2]) / 2.0;
	}
	// Return middle value for odd-sized vector
	return v[(size - 1) / 2];
	
}

double mode(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	sort(v);
	double mostFrequent = v[0];
	int maxFrequency = 0;
	// Count frequency of each element in vector
	for (auto i:v) {
		int frequency = 0;
		for (auto j:v) {
			if (abs(i - j) < EPSILON) {
				frequency++;
			}
		}
		// Only update if frequency is greater than current max
		if (frequency > maxFrequency) {
			maxFrequency = frequency;
			mostFrequent = i;
		}
	}
    return mostFrequent;
}

double min(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	double minimum = v[0];
	for (auto i:v) {
		if (i < minimum) {
			minimum = i;
		}
	}
    return minimum;
}

double max(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	double maximum = v[0];
	for (auto i:v) {
		if (i > maximum) {
			maximum = i;
		}
	}
	return maximum;
}

double stdev(vector<double> v) {
	// Check requires clause
    assert(!v.empty());

	int size = count(v);
	double mn = mean(v);
	double sd = 0;
	for (auto i:v) {
		sd += pow((i - mn), 2);
	}
	sd /= (size - 1);
	sd = sqrt(sd);
    return sd;
}

double percentile(vector<double> v, double p) {
	// Check requires clause
    assert(!v.empty());

	sort(v);
	int N = count(v);
	
	// Calculate rank
	double n = p * (N - 1) + 1;

	// Split rank into integer (k) and decimal (d) parts
	double doublek;
	double d;
	d = modf(n, &doublek);
	// Convert integer part to integer-type variable
	int k = (int)doublek;

	double vp = v[k - 1];
	// Avoid going outside bounds of vector
	if (d > 0.0) {
		vp += d * (v[k] - v[k - 1]);
	}
    return vp;
}
