/* stats_tests.cpp
 *
 * Ryan Hennessey
 * rjhenn@umich.edu
 *
 * Unit tests for the simple statistics library
 *
 * EECS 280 Project 1
 *
 * Protip #1: Write tests for the functions BEFORE you implement them!  For
 * example, write tests for median() first, and then write median().  It sounds
 * like a pain, but it helps make sure that you are never under the illusion
 * that your code works when it's actually full of bugs.
 *
 * Protip #2: Instead of putting all your tests in main(),  put each test case
 * in a function!
 */


#include "stats.h"
#include <iostream>
#include <cassert>
#include <vector>
#include <cmath>
using namespace std;

const double EPSILON = 0.0001;

void test_summarize();
void test_count();
void test_sum();
void test_mean();
void test_median();
void test_mode();
void test_min();
void test_max();
void test_stdev();
void test_percentile();

int main() {
  test_summarize();
  test_count();
  test_sum();
  test_mean();
  test_median();
  test_mode();
  test_min();
  test_max();
  test_stdev();
  test_percentile();

  return 0;
}

void test_summarize() {
	cout << "test_summarize" << endl;

	vector<double> data1 = {2.0};
	vector<vector<double>> vec1 = summarize(data1);
	assert(abs(vec1[0][0] - 2.0) < EPSILON);
	assert(abs(vec1[0][1] - 1.0) < EPSILON);

	vector<double> data2 = {-12.4, 127.0, 3.5, 0.0};
	vector<vector<double>> vec2 = summarize(data2);
	assert(abs(vec2[0][0] + 12.4) < EPSILON);
	assert(abs(vec2[0][1] - 1.0) < EPSILON);
	assert(abs(vec2[1][0] - 0.0) < EPSILON);
	assert(abs(vec2[1][1] - 1.0) < EPSILON);
	assert(abs(vec2[2][0] - 3.5) < EPSILON);
	assert(abs(vec2[2][1] - 1.0) < EPSILON);
	assert(abs(vec2[3][0] - 127.0) < EPSILON);
	assert(abs(vec2[3][1] - 1.0) < EPSILON);

	vector<double> data3 = {1.0, 2.0, 1.0, 2.0};
	vector<vector<double>> vec3 = summarize(data3);
	assert(abs(vec3[0][0] - 1.0) < EPSILON);
	assert(abs(vec3[0][1] - 2.0) < EPSILON);
	assert(abs(vec3[1][0] - 2.0) < EPSILON);
	assert(abs(vec3[1][1] - 2.0) < EPSILON);

	vector<double> data4 = {2.0, 17.0, 1.0, 2.0, 2.0, 1.0};
	vector<vector<double>> vec4 = summarize(data4);
	assert(abs(vec4[0][0] - 1.0) < EPSILON);
	assert(abs(vec4[0][1] - 2.0) < EPSILON);
	assert(abs(vec4[1][0] - 2.0) < EPSILON);
	assert(abs(vec4[1][1] - 3.0) < EPSILON);
	assert(abs(vec4[2][0] - 17.0) < EPSILON);
	assert(abs(vec4[2][1] - 1.0) < EPSILON);

	cout << "PASS!" << endl;
}

void test_count() {
	cout << "test_count" << endl;

	vector<double> data1 = {};
	assert(count(data1) == 0);

	vector<double> data2 = {1.0};
	assert(count(data2) == 1);

	vector<double> data3 = {-1.0};
	assert(count(data3) == 1);

	vector<double> data4 = {1.5};
	assert(count(data4) == 1);

	vector<double> data5 = {0.0};
	assert(count(data5) == 1);

	vector<double> data6 = {2.4, 3.5};
	assert(count(data6) == 2);

	vector<double> data7 = {-4.7, 0.0, 17.9};
	assert(count(data7) == 3);

	cout << "PASS!" << endl;
}

void test_sum() {
  cout << "test_sum" << endl;

  vector<double> data1 = {1.0, 2.0, 3.0};
  assert(abs(sum(data1) - 6.0) < EPSILON);

  vector<double> data2 = {1.4, 2.7, -3.1, -1.0, 0.0};
  assert(abs(sum(data2) - 0.0) < EPSILON);

  vector<double> data3 = {-2.0, -2.0, -2.0, -2.0};
  assert(abs(sum(data3) + 8.0) < EPSILON);

  vector<double> data4 = {14.9};
  assert(abs(sum(data4) - 14.9) < EPSILON);

  cout << "PASS!" << endl;
}

void test_mean() {
	cout << "test_mean" << endl;

	vector<double> data1 = {1.0, 2.0, 3.0};
	assert(abs(mean(data1) - 2.0) < EPSILON);

	vector<double> data2 = {1.0, 2.0, -3.0};
	assert(abs(mean(data2) - 0.0) < EPSILON);

	vector<double> data3 = {-7.5};
	assert(abs(mean(data3) + 7.5) < EPSILON);

	vector<double> data4 = {1.6, -7.4, 3.9, 1.2, 0.0, -10.0};
	assert(abs(mean(data4) + 1.78333) < EPSILON);

	vector<double> data5 = {5.0, 5.0, 5.0};
	assert(abs(mean(data5) - 5.0) < EPSILON);

	cout << "PASS!" << endl;
}

void test_median() {
	cout << "test_median" << endl;

	vector<double> data1 = {-0.4};
	assert(abs(median(data1) + 0.4) < EPSILON);

	vector<double> data2 = {1.0, -2.5};
	assert(abs(median(data2) + 0.75) < EPSILON);

	vector<double> data3 = {1.0, -1.3, 0.0};
	assert(abs(median(data3) - 0.0) < EPSILON);

	vector<double> data4 = {1.7, -94.3, 0.5, 18.0};
	assert(abs(median(data4) - 1.1) < EPSILON);

	cout << "PASS!" << endl;
}

void test_mode() {
	cout << "test_mode" << endl;

	vector<double> data1 = {3.0};
	assert(abs(mode(data1) - 3.0) < EPSILON);

	vector<double> data2 = {3.0, 2.0};
	assert(abs(mode(data2) - 2.0) < EPSILON);

	vector<double> data3 = {3.0, 2.0, 1.0};
	assert(abs(mode(data3) - 1.0) < EPSILON);

	vector<double> data4 = {1.0, 1.0, 2.0, 3.0};
	assert(abs(mode(data4) - 1.0) < EPSILON);

	vector<double> data5 = {1.0, 1.0, -2.0, -2.0};
	assert(abs(mode(data5) + 2.0) < EPSILON);

	vector<double> data6 = {-1.5, -1.5};
	assert(abs(mode(data6) + 1.5) < EPSILON);

	cout << "PASS!" << endl;
}

void test_min() {
	cout << "test_min" << endl;

	vector<double> data1 = {3.0};
	assert(abs(min(data1) - 3.0) < EPSILON);

	vector<double> data2 = {3.7, 0.0};
	assert(abs(min(data2) - 0.0) < EPSILON);

	vector<double> data3 = {-1.5, -1.4, -1.3};
	assert(abs(min(data3) + 1.5) < EPSILON);

	vector<double> data4 = {4.1, 4.1, 4.1};
	assert(abs(min(data4) - 4.1) < EPSILON);

	vector<double> data5 = {3.7, 100.4, 0.3, -70.0, 4.7, -70.1};
	assert(abs(min(data5) + 70.1) < EPSILON);

	cout << "PASS!" << endl;
}

void test_max() {
	cout << "test_max" << endl;

	vector<double> data1 = {-1.2};
	assert(abs(max(data1) + 1.2) < EPSILON);

	vector<double> data2 = {0.0, -1.2, -0.1};
	assert(abs(max(data2) + 0.0) < EPSILON);

	vector<double> data3 = {7.9, -1.2, 0.0, 4.4, 8.8};
	assert(abs(max(data3) - 8.8) < EPSILON);

	vector<double> data4 = {6.0, 6.0, 6.0};
	assert(abs(max(data4) - 6.0) < EPSILON);

	vector<double> data5 = {-15.0, -16.0, -17.0};
	assert(abs(max(data5) + 15.0) < EPSILON);

	cout << "PASS!" << endl;
}

void test_stdev() {
	cout << "test_stdev" << endl;

	vector<double> data1 = {1.0, 1.0};
	assert(abs(stdev(data1) - 0.0) < EPSILON);

	vector<double> data2 = {0.0, 0.0};
	assert(abs(stdev(data2) - 0.0) < EPSILON);

	vector<double> data3 = {-1.5, 1.5};
	assert(abs(stdev(data3) - 2.12132) < EPSILON);

	vector<double> data4 = {1.0, 3.0, 2.0};
	assert(abs(stdev(data4) - 1.0) < EPSILON);

	vector<double> data5 = {11.1, -12.2, 13.3, -14.4};
	assert(abs(stdev(data5) - 14.77712) < EPSILON);

	vector<double> data6 = {-11.1, 12.2, -13.3, 14.4};
	assert(abs(stdev(data6) - 14.77712) < EPSILON);

	cout << "PASS!" << endl;
}

void test_percentile() {
	cout << "test_percentile" << endl;

	vector<double> data1 = {1.4};
	assert(abs(percentile(data1, 0.0) - 1.4) < EPSILON);
	assert(abs(percentile(data1, 0.5) - 1.4) < EPSILON);
	assert(abs(percentile(data1, 1.0) - 1.4) < EPSILON);

	vector<double> data2 = {1.0, -1.0, 0.0};
	assert(abs(percentile(data2, 0.0) + 1.0) < EPSILON);
	assert(abs(percentile(data2, 0.5) - 0.0) < EPSILON);
	assert(abs(percentile(data2, 1.0) - 1.0) < EPSILON);

	vector<double> data3 = {50.0, 40.0, 35.0, 20.0, 15.0};
	assert(abs(percentile(data3, 0.0) - 15.0) < EPSILON);
	assert(abs(percentile(data3, 0.25) - 20.0) < EPSILON);
	assert(abs(percentile(data3, 0.4) - 29.0) < EPSILON);
	assert(abs(percentile(data3, 0.75) - 40.0) < EPSILON);
	assert(abs(percentile(data3, 1.0) - 50.0) < EPSILON);

	vector<double> data4 = {-40.0, -30.0, -20.0, -10.0};
	assert(abs(percentile(data4, 0.0) + 40.0) < EPSILON);
	assert(abs(percentile(data4, 0.25) + 32.5) < EPSILON);
	assert(abs(percentile(data4, 0.5) + 25.0) < EPSILON);
	assert(abs(percentile(data4, 0.75) + 17.5) < EPSILON);
	assert(abs(percentile(data4, 1.0) + 10.0) < EPSILON);

	cout << "PASS!" << endl;
}