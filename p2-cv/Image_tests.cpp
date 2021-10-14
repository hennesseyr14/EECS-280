#include "Matrix.h"
#include "Image_test_helpers.h"
#include "unit_test_framework.h"
#include <iostream>
#include <string>
#include <sstream>
#include <cassert>

using namespace std;


// Here's a free test for you! Model yours after this one.
// Test functions have no interface and thus no RMEs, but
// add a comment like the one here to say what it is testing.
// -----
// Sets various pixels in a 2x2 Image and checks
// that Image_print produces the correct output.
TEST(test_print_basic) {
  Image *img = new Image; // create an Image in dynamic memory

  const Pixel red = {255, 0, 0};
  const Pixel green = {0, 255, 0};
  const Pixel blue = {0, 0, 255};
  const Pixel white = {255, 255, 255};

  Image_init(img, 2, 2);
  Image_set_pixel(img, 0, 0, red);
  Image_set_pixel(img, 0, 1, green);
  Image_set_pixel(img, 1, 0, blue);
  Image_set_pixel(img, 1, 1, white);

  // Capture our output
  ostringstream s;
  Image_print(img, s);

  // Correct output
  ostringstream correct;
  correct << "P3\n2 2\n255\n";
  correct << "255 0 0 0 255 0 \n";
  correct << "0 0 255 255 255 255 \n";
  ASSERT_EQUAL(s.str(), correct.str());

  delete img; // delete the Image
}

// Testing Image_init, Image_width, Image_height, Image_print
TEST(test_Image_init_width_height_print) {
	Image* img = new Image;

	const int width = 4;
	const int height = 7;
	Image_init(img, width, height);
	ASSERT_EQUAL(Image_width(img), width);
	ASSERT_EQUAL(Image_height(img), height);

	const int width1 = 1;
	const int height1 = 1;
	Image_init(img, width1, height1);
	ASSERT_EQUAL(Image_width(img), width1);
	ASSERT_EQUAL(Image_height(img), height1);

	Image_init(img, MAX_MATRIX_WIDTH, MAX_MATRIX_HEIGHT);
	ASSERT_EQUAL(Image_width(img), MAX_MATRIX_WIDTH);
	ASSERT_EQUAL(Image_height(img), MAX_MATRIX_HEIGHT);

	string input = "P3\n2 2\n255\n50 100 200 250 0 25 \n"
		                         "75 125 175 225 230 235 \n";
	istringstream ss_input(input);
	Image_init(img, ss_input);

	string output_correct = "P3\n2 2\n255\n50 100 200 250 0 25 \n"
		                                  "75 125 175 225 230 235 \n";
	ostringstream ss_output;
	Image_print(img, ss_output);
	ASSERT_EQUAL(ss_output.str(), output_correct);

	string input1 = "P3 1 1 255 19 20 21";
	istringstream ss_input1(input1);
	Image_init(img, ss_input1);

	string output_correct1 = "P3\n1 1\n255\n19 20 21 \n";
	ostringstream ss_output1;
	Image_print(img, ss_output1);
	ASSERT_EQUAL(ss_output1.str(), output_correct1);

	delete img;
}

// Testing Image_get_pixel, Image_set_pixel, Image_fill
TEST(test_Image_get_pixel_set_pixel_fill) {
	Image* img = new Image;

	const Pixel red = {255, 0, 0};
	const Pixel green = {0, 255, 0};
	const Pixel blue = {0, 0, 255};
	const Pixel white = {255, 255, 255};

	Image_init(img, 1, 1);
	Image_set_pixel(img, 0, 0, red);
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 0, 0), red));

	Image_fill(img, white);
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 0, 0), white));

	Image_init(img, 3, 4);
	Image_fill(img, green);
	Image_set_pixel(img, 0, 0, blue);
	Image_set_pixel(img, 3, 2, red);
	Image_set_pixel(img, 3, 0, white);
	Image_set_pixel(img, 0, 2, blue);
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 0, 0), blue));
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 3, 2), red));
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 3, 0), white));
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 0, 2), blue));
	ASSERT_TRUE(Pixel_equal(Image_get_pixel(img, 1, 2), green));

	delete img;
}

// NOTE: The unit test framework tutorial in Lab 2 originally
// had a semicolon after TEST_MAIN(). Although including and
// excluding the semicolon are both correct according to the c++
// standard, the version of g++ we are using reports a warning
// when there is a semicolon. Therefore do NOT add a semicolon
// after TEST_MAIN()
TEST_MAIN() // Do NOT put a semicolon here
