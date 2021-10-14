# include "Matrix.h"
# include "Image.h"
# include "processing.h"
# include <cstdlib>
# include <fstream>
# include <iostream>
# include <string>

using namespace std;

// REQUIRES: Nothing
// MODIFIES: cout
// EFFECTS:  Prints error message to cout.
void print_message();

int main(int argc, char **argv) {
	// Check that there are 4 or 5 arguments
	if (argc != 4 && argc != 5) {
		print_message();
		return 1;
	}
	// Create an image to store the input/output images
	Image* img = new Image;

	// Open input file
	ifstream fin;
	string filename = argv[1];
	fin.open(filename.c_str());

	// Check that file is open
	if (!fin.is_open()) {
		cout << "Error opening file: " << filename << endl;
		return 1;
	}

	// Read from input file
	Image_init(img, fin);

	int newWidth = atoi(argv[3]);
	int newHeight = Image_height(img);
	// Check that the desired width is less than
	// or equal to the original width
	if (newWidth > Image_width(img)) {
		print_message();
		return 1;
	}
	if (argc == 5) {
		int newHeight = atoi(argv[4]);
		// Check that the desired height is less than
		// or equal to the original height
		if (newHeight > Image_height(img)) {
			print_message();
			return 1;
		}
	}
	
	// Apply seam carving algorithm to image
	seam_carve(img, newWidth, newHeight);

	// Write image to output file
	string outfile = argv[2];
	ofstream fout(outfile.c_str());
	Image_print(img, fout);

	delete img;

	return 0;
}

void print_message() {
	cout << "Usage: resize.exe IN_FILENAME OUT_FILENAME WIDTH [HEIGHT]" << endl;
	cout << "WIDTH and HEIGHT must be less than or equal to original" << endl;
}