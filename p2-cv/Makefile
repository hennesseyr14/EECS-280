# Makefile
# Build rules for EECS 280 project 2

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = --std=c++11 -Wall -Werror -pedantic -g

test: release
	./Matrix_public_test.exe
	./Image_public_test.exe
	./processing_public_tests.exe dog
	./processing_public_tests.exe crabster
	./processing_public_tests.exe horses
	./resize.exe dog.ppm dog_4x5.out.ppm 4 5
	diff dog_4x5.out.ppm dog_4x5.correct.ppm

release: Matrix_public_test.exe Matrix_tests.exe Image_public_test.exe \
		 Image_tests.exe processing_public_tests.exe resize.exe

Matrix_public_test.exe: Matrix_public_test.cpp Matrix.cpp Matrix_test_helpers.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

Matrix_tests.exe: Matrix_tests.cpp Matrix.cpp Matrix_test_helpers.cpp \
				  unit_test_framework.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

Image_public_test.exe: Image_public_test.cpp Matrix.cpp Image.cpp \
			Matrix_test_helpers.cpp Image_test_helpers.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

Image_tests.exe: Image_tests.cpp Matrix.cpp Image.cpp Matrix_test_helpers.cpp \
			Image_test_helpers.cpp unit_test_framework.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

processing_public_tests.exe: processing_public_tests.cpp Matrix.cpp \
				Image.cpp processing.cpp \
				Matrix_test_helpers.cpp Image_test_helpers.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

resize.exe: resize.cpp Matrix.cpp Image.cpp processing.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

# Disable built-in Makefile rules
.SUFFIXES:

clean:
	rm -rvf *.exe *.out.txt *.out.ppm *.dSYM
