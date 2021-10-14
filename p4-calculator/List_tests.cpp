#include "List.h"
#include "unit_test_framework.h"

#include <string>

using namespace std;

const double PRECISION = 0.0001;

TEST(test_list_default_ctor) {
    List<int> empty_list;
    ASSERT_TRUE(empty_list.empty());
}

// Add more test cases here

TEST(test_empty) {
	List<int> list;
	ASSERT_TRUE(list.empty());

	list.push_back(42);
	ASSERT_FALSE(list.empty());
	ASSERT_EQUAL(list.size(), 1);

	list.pop_back();
	ASSERT_TRUE(list.empty());

	list.push_front(-42);
	ASSERT_FALSE(list.empty());
	
	list.pop_front();
	ASSERT_TRUE(list.empty());
	ASSERT_EQUAL(list.size(), 0);

	list.push_back(42);
	list.push_front(-42);
	ASSERT_FALSE(list.empty());
}

TEST(test_size) {
	List<int> list;
	ASSERT_EQUAL(list.size(), 0);

	list.push_front(1);
	ASSERT_EQUAL(list.size(), 1);

	list.push_back(2);
	list.push_front(3);
	list.push_back(4);
	list.push_front(5);
	ASSERT_EQUAL(list.size(), 5);

	list.pop_front();
	ASSERT_EQUAL(list.size(), 4);

	list.pop_back();
	ASSERT_EQUAL(list.size(), 3);

	list.pop_front();
	ASSERT_EQUAL(list.size(), 2);

	list.pop_front();
	ASSERT_EQUAL(list.size(), 1);
	ASSERT_FALSE(list.empty());

	list.pop_front();
	ASSERT_EQUAL(list.size(), 0);
	ASSERT_TRUE(list.empty());

	list.push_back(-300);
	ASSERT_EQUAL(list.size(), 1);

	list.pop_back();
	ASSERT_EQUAL(list.size(), 0);
	ASSERT_TRUE(list.empty());
}

TEST(test_front) {
	List<int> list;

	list.push_front(100);
	ASSERT_EQUAL(list.front(), 100);

	list.push_front(20);
	ASSERT_EQUAL(list.front(), 20);

	list.push_back(3);
	ASSERT_EQUAL(list.front(), 20);

	list.pop_front();
	ASSERT_EQUAL(list.front(), 100);

	list.pop_back();
	ASSERT_EQUAL(list.front(), 100);
}

TEST(test_back) {
	List<int> list;

	list.push_front(100);
	ASSERT_EQUAL(list.back(), 100);

	list.push_front(20);
	ASSERT_EQUAL(list.back(), 100);

	list.push_back(3);
	ASSERT_EQUAL(list.back(), 3);

	list.pop_front();
	ASSERT_EQUAL(list.back(), 3);

	list.pop_back();
	ASSERT_EQUAL(list.back(), 100);
}

TEST(test_push_front) {
	List<string> list;

	list.push_front("a");
	ASSERT_EQUAL(list.front(), "a");
	ASSERT_EQUAL(list.back(), "a");
	ASSERT_EQUAL(list.size(), 1);

	list.push_front("b");
	ASSERT_EQUAL(list.front(), "b");
	ASSERT_EQUAL(list.back(), "a");
	ASSERT_EQUAL(list.size(), 2);

	list.push_front("c");
	list.push_front("d");
	ASSERT_EQUAL(list.front(), "d");
	ASSERT_EQUAL(list.back(), "a");
	ASSERT_EQUAL(list.size(), 4);
}

TEST(test_push_back) {
	List<string> list;

	list.push_back("a");
	ASSERT_EQUAL(list.back(), "a");
	ASSERT_EQUAL(list.front(), "a");
	ASSERT_EQUAL(list.size(), 1);

	list.push_back("b");
	ASSERT_EQUAL(list.back(), "b");
	ASSERT_EQUAL(list.front(), "a");
	ASSERT_EQUAL(list.size(), 2);

	list.push_back("c");
	list.push_back("d");
	ASSERT_EQUAL(list.back(), "d");
	ASSERT_EQUAL(list.front(), "a");
	ASSERT_EQUAL(list.size(), 4);
}

TEST(test_pop_front) {
	List<double> list;

	list.push_front(2.1);
	list.pop_front();
	ASSERT_TRUE(list.empty());
	ASSERT_EQUAL(list.size(), 0);

	list.push_front(3.2);
	list.push_back(4.3);
	list.push_back(5.4);
	list.pop_front();
	ASSERT_ALMOST_EQUAL(list.front(), 4.3, PRECISION);
	ASSERT_EQUAL(list.size(), 2);
	ASSERT_ALMOST_EQUAL(list.back(), 5.4, PRECISION);
}

TEST(test_pop_back) {
	List<double> list;

	list.push_back(2.1);
	list.pop_back();
	ASSERT_TRUE(list.empty());
	ASSERT_EQUAL(list.size(), 0);

	list.push_back(3.2);
	list.push_front(4.3);
	list.push_front(5.4);
	list.pop_back();
	ASSERT_ALMOST_EQUAL(list.back(), 4.3, PRECISION);
	ASSERT_EQUAL(list.size(), 2);
	ASSERT_ALMOST_EQUAL(list.front(), 5.4, PRECISION);
}

TEST(test_copy_constructor) {
	List<int> list1;
	List<int> list2 = list1;
	ASSERT_TRUE(list2.empty());

	list1.push_front(1);
	list1.push_back(2);
	List<int> list3 = list1;
	ASSERT_EQUAL(list3.front(), 1);
	ASSERT_EQUAL(list3.back(), 2);
	ASSERT_EQUAL(list3.size(), 2);

	List<int> list4(list2);
	ASSERT_TRUE(list4.empty());

	List<int> list5(list1);
	ASSERT_EQUAL(list5.front(), 1);
	ASSERT_EQUAL(list5.back(), 2);
	ASSERT_EQUAL(list5.size(), 2);
}

TEST(test_assignment_operator) {
	List<int> list1;
	list1 = list1;
	ASSERT_TRUE(list1.empty());

	list1.push_back(1);
	list1.push_back(2);
	list1 = list1;
	ASSERT_EQUAL(list1.front(), 1);
	ASSERT_EQUAL(list1.back(), 2);
	ASSERT_EQUAL(list1.size(), 2);

	List<int> list2;
	list2 = list1;
	ASSERT_EQUAL(list2.front(), 1);
	ASSERT_EQUAL(list2.back(), 2);
	ASSERT_EQUAL(list2.size(), 2);

	list1 = list2;
	ASSERT_EQUAL(list1.front(), 1);
	ASSERT_EQUAL(list1.back(), 2);
	ASSERT_EQUAL(list1.size(), 2);

	List<int> list3;
	list2 = list3;
	ASSERT_TRUE(list2.empty());

	list3.push_back(-1);
	list3.push_back(-2);
	list3.push_back(-3);
	list1 = list3;
	ASSERT_EQUAL(list1.size(), 3);
	ASSERT_EQUAL(list1.front(), -1);
	ASSERT_EQUAL(list1.back(), -3);
}

TEST(test_iterator_deref) {
	List<int> list;
	list.push_front(-12);

	List<int>::Iterator iter = list.begin();
	ASSERT_EQUAL(*iter, -12);

	List<string> list1;
	list1.push_front("Tom Brady");

	List<string>::Iterator iter1 = list1.begin();
	ASSERT_EQUAL(*iter1, "Tom Brady");
}

TEST(test_iterator_increment) {
	List<int> list;
	list.push_front(12);
	list.push_back(16);
	list.push_back(18);

	List<int>::Iterator iter = list.begin();
	ASSERT_EQUAL(*++iter, 16);
	ASSERT_EQUAL(*++iter, 18);
	ASSERT_EQUAL(++iter, list.end());
}

TEST(test_iterator_default_ctor) {
	List<int> list;
	List<int>::Iterator iter;
	ASSERT_EQUAL(iter, list.end());

	list.push_front(12);
	ASSERT_EQUAL(iter, list.end());

	list.push_back(-12);
	ASSERT_EQUAL(iter, list.end());

	list.pop_front();
	ASSERT_EQUAL(iter, list.end());

	list.pop_back();
	ASSERT_EQUAL(iter, list.end());
}

TEST(test_iterator_equal) {
	List<int> list;
	list.push_front(12);
	list.push_back(16);

	List<int>::Iterator iter1 = list.begin();
	List<int>::Iterator iter2 = list.begin();
	ASSERT_TRUE(iter1 == iter2);
	ASSERT_FALSE(++iter1 == iter2);
	ASSERT_FALSE(iter1 == list.end());
	ASSERT_TRUE(++iter1 == list.end());
}

TEST(test_iterator_not_equal) {
	List<int> list;
	list.push_front(12);
	list.push_back(16);

	List<int>::Iterator iter1 = list.begin();
	List<int>::Iterator iter2 = list.begin();
	ASSERT_FALSE(iter1 != iter2);
	ASSERT_TRUE(++iter1 != iter2);
	ASSERT_TRUE(iter1 != list.end());
	ASSERT_FALSE(++iter1 != list.end());
}

TEST(test_iterator_custom_ctor) {
	List<int> list;
	list.push_front(12);
	list.push_back(16);
	list.push_back(18);

	List<int>::Iterator iter1 = list.begin();
	List<int>::Iterator iter2 = ++ ++list.begin();
	ASSERT_EQUAL(*iter1, 12);
	ASSERT_EQUAL(*iter2, 18);

	List<int>::Iterator iter3(list.begin());
	List<int>::Iterator iter4(++list.begin());
	ASSERT_EQUAL(*iter3, 12);
	ASSERT_EQUAL(*iter4, 16);

	ASSERT_EQUAL(iter1, iter3);
}

TEST(test_begin) {
	List<int> list;
	list.push_front(16);

	List<int>::Iterator iter = list.begin();
	ASSERT_EQUAL(*iter, 16);

	list.push_front(12);
	iter = list.begin();
	ASSERT_EQUAL(*iter, 12);

	list.push_back(18);
	iter = list.begin();
	ASSERT_EQUAL(*iter, 12);

	list.pop_front();
	iter = list.begin();
	ASSERT_EQUAL(*iter, 16);

	list.pop_back();
	iter = list.begin();
	ASSERT_EQUAL(*iter, 16);
}

TEST(test_end) {
	List<int> list;
	List<int>::Iterator iter = list.end();
	ASSERT_EQUAL(iter, list.end());

	list.push_front(12);
	ASSERT_EQUAL(iter, list.end());

	list.push_back(16);
	ASSERT_EQUAL(iter, list.end());

	iter = list.begin();
	ASSERT_EQUAL(++ ++iter, list.end());

	list.pop_front();
	ASSERT_EQUAL(iter, list.end());

	list.pop_back();
	ASSERT_EQUAL(iter, list.end());
}

TEST(test_erase) {
	List<int> list;
	list.push_back(12);
	List<int>::Iterator iter = list.begin();

	list.erase(iter);
	ASSERT_TRUE(list.empty());

	list.push_back(12);
	list.push_back(16);
	list.push_back(18);
	iter = ++list.begin();
	list.erase(iter);
	ASSERT_EQUAL(list.front(), 12);
	ASSERT_EQUAL(list.back(), 18);
	ASSERT_EQUAL(list.size(), 2);

	iter = list.begin();
	list.erase(iter);
	ASSERT_EQUAL(list.front(), 18);
	ASSERT_EQUAL(list.size(), 1);

	list.push_front(12);
	iter = ++list.begin();
	list.erase(iter);
	ASSERT_EQUAL(list.back(), 12);
	ASSERT_EQUAL(list.size(), 1);
}

TEST(test_insert) {
	List<int> list;

	List<int>::Iterator iter = list.end();
	list.insert(iter, 12);
	ASSERT_EQUAL(list.front(), 12);
	ASSERT_EQUAL(list.back(), 12);
	ASSERT_EQUAL(list.size(), 1);

	list.insert(iter, 16);
	ASSERT_EQUAL(list.front(), 12);
	ASSERT_EQUAL(list.back(), 16);
	ASSERT_EQUAL(list.size(), 2);

	iter = list.begin();
	list.insert(iter, 18);
	ASSERT_EQUAL(list.front(), 18);
	ASSERT_EQUAL(list.back(), 16);
	ASSERT_EQUAL(list.size(), 3);

	iter = ++list.begin();
	list.insert(iter, 7);
	ASSERT_EQUAL(list.front(), 18);
	ASSERT_EQUAL(list.back(), 16);
	ASSERT_EQUAL(list.size(), 4);
	ASSERT_EQUAL(*--iter, 7);
}

TEST_MAIN()
