#include "Stack.h"
#include "Stack.h" // check for proper include guards

#include "unit_test_framework.h"

#include <iostream>
#include <string>

using namespace std;


TEST(test_stack_default_ctor) {
    Stack<int> s;
    ASSERT_TRUE(s.empty());
}

TEST(test_stack_push_and_pop_basic) {
    Stack<int> s;
    s.push(3);
    s.push(5);
    ASSERT_TRUE(!s.empty());
    ASSERT_EQUAL(s.pop(), 5);
    ASSERT_TRUE(!s.empty());
    ASSERT_EQUAL(s.pop(), 3);
    ASSERT_TRUE(s.empty());
}

TEST(test_stack_other_functions_compile) {
    Stack<int> my_stack;
    my_stack.size();
    cout << my_stack << endl;
    my_stack.push(42);
    my_stack.top();
    Stack<int> stack_cpy(my_stack);
    my_stack = stack_cpy;
}

TEST(test_stack_top) {
	Stack<int> stack;
	stack.push(-99);
	ASSERT_EQUAL(stack.top(), -99);
	stack.push(66);
	ASSERT_EQUAL(stack.top(), 66);
	stack.pop();
	ASSERT_EQUAL(stack.top(), -99);
}

TEST(test_stack_print) {
	Stack<int> stack;
	ostringstream os;
	stack.print(os);
	ASSERT_EQUAL(os.str(), "");
	stack.push(1);
	stack.push(2);
	stack.push(3);
	stack.print(os);
	ASSERT_EQUAL(os.str(), "3 2 1 ");
}

TEST(test_stream_insertion_operator) {
	Stack<int> stack;
	ostringstream os;
	os << stack;
	ASSERT_EQUAL(os.str(), "");
	stack.push(1);
	stack.push(2);
	stack.push(3);
	os << stack;
	ASSERT_EQUAL(os.str(), "3 2 1 ");
}

TEST_MAIN()
