#include <cassert>
#include "Image.h"
#include <string>

// REQUIRES: img points to an Image
//           0 < width <= MAX_MATRIX_WIDTH
//           0 < height <= MAX_MATRIX_HEIGHT
// MODIFIES: *img
// EFFECTS:  Initializes the Image with the given width and height.
// NOTE:     Do NOT use new or delete here.
void Image_init(Image* img, int width, int height) {
	// Verify REQUIRES clauses
	assert(0 < width && width <= MAX_MATRIX_WIDTH);
	assert(0 < height && height <= MAX_MATRIX_HEIGHT);

	// Set width and height of the image
	img->width = width;
	img->height = height;

	// Set width and height red, green, and blue channels
	Matrix_init(&img->red_channel, width, height);
	Matrix_init(&img->green_channel, width, height);
	Matrix_init(&img->blue_channel, width, height);
}

// REQUIRES: img points to an Image
//           is contains an image in PPM format without comments
//           (any kind of whitespace is ok)
// MODIFIES: *img
// EFFECTS:  Initializes the Image by reading in an image in PPM format
//           from the given input stream.
// NOTE:     See the project spec for a discussion of PPM format.
// NOTE:     Do NOT use new or delete here.
void Image_init(Image* img, std::istream& is) {
	// Read in "P3", dimensions, and max value for RGB intensities
	std::string P3;
	is >> P3;
	is >> img->width >> img->height;
	std::string max_value;
	is >> max_value;

	// Set width and height red, green, and blue channels
	Matrix_init(&img->red_channel, img->width, img->height);
	Matrix_init(&img->green_channel, img->width, img->height);
	Matrix_init(&img->blue_channel, img->width, img->height);

	// Read in intensities for each pixel in image
	for (int i = 0; i < img->height; ++i) {
		for (int j = 0; j < img->width; ++j) {
			is >> *Matrix_at(&img->red_channel, i, j);
			is >> *Matrix_at(&img->green_channel, i, j);
			is >> *Matrix_at(&img->blue_channel, i, j);
		}
	}
}

// REQUIRES: img points to a valid Image
// EFFECTS:  Writes the image to the given output stream in PPM format.
//           You must use the kind of whitespace specified here.
//           First, prints out the header for the image like this:
//             P3 [newline]
//             WIDTH [space] HEIGHT [newline]
//             255 [newline]
//           Next, prints out the rows of the image, each followed by a
//           newline. Each pixel in a row is printed as three ints
//           for its red, green, and blue components, in that order. Each
//           int is followed by a space. This means that there will be an
//           "extra" space at the end of each line. See the project spec
//           for an example.
void Image_print(const Image* img, std::ostream& os) {
	// Print out the header for the image
	os << "P3\n";
	os << img->width << " " << img->height << "\n";
	os << "255\n";

	// Print out red, green, and blue components for each pixel in image
	for (int i = 0; i < img->height; ++i) {
		for (int j = 0; j < img->width; ++j) {
			os << *Matrix_at(&img->red_channel, i, j) << " ";
			os << *Matrix_at(&img->green_channel, i, j) << " ";
			os << *Matrix_at(&img->blue_channel, i, j) << " ";
		}
		os << "\n";
	}
}

// REQUIRES: img points to a valid Image
// EFFECTS:  Returns the width of the Image.
int Image_width(const Image* img) {
	return img->width;
}

// REQUIRES: img points to a valid Image
// EFFECTS:  Returns the height of the Image.
int Image_height(const Image* img) {
	return img->height;
}

// REQUIRES: img points to a valid Image
//           0 <= row && row < Image_height(img)
//           0 <= column && column < Image_width(img)
// EFFECTS:  Returns the pixel in the Image at the given row and column.
Pixel Image_get_pixel(const Image* img, int row, int column) {
	// Verify REQUIRES clauses
    assert(0 <= row && row < Image_height(img));
	assert(0 <= column && column < Image_width(img));

	// Get RGB intensities for the pixel and return
	Pixel pixel = {*Matrix_at(&img->red_channel, row, column),
				   *Matrix_at(&img->green_channel, row, column),
				   *Matrix_at(&img->blue_channel, row, column)};
	return pixel;
}

// REQUIRES: img points to a valid Image
//           0 <= row && row < Image_height(img)
//           0 <= column && column < Image_width(img)
// MODIFIES: *img
// EFFECTS:  Sets the pixel in the Image at the given row and column
//           to the given color.
void Image_set_pixel(Image* img, int row, int column, Pixel color) {
	// Verify REQUIRES clauses
    assert(0 <= row && row < Image_height(img));
	assert(0 <= column && column < Image_width(img));

	// Set RGB intensities of specifies pixel
	*Matrix_at(&img->red_channel, row, column) = color.r;
	*Matrix_at(&img->green_channel, row, column) = color.g;
	*Matrix_at(&img->blue_channel, row, column) = color.b;
}

// REQUIRES: img points to a valid Image
// MODIFIES: *img
// EFFECTS:  Sets each pixel in the image to the given color.
void Image_fill(Image* img, Pixel color) {
	// Loop through entire image and set each pixel to the specified color
	for (int i = 0; i < img->height; ++i) {
		for (int j = 0; j < img->width; ++j) {
			*Matrix_at(&img->red_channel, i, j) = color.r;
			*Matrix_at(&img->green_channel, i, j) = color.g;
			*Matrix_at(&img->blue_channel, i, j) = color.b;
		}
	}
}
