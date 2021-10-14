/* Pack.cpp
*
* Implementation of Pack class
*
* by Ryan Hennessey 
* rjhenn@umich.edu
* 2018-2-11
*/

#include "Pack.h"
#include "Card.h"
#include <array>
#include <string>
#include <cassert>

static const int LOWEST_RANK_INDEX = 7;
static const int NUM_SHUFFLES = 7;

// EFFECTS: Initializes the Pack to be in the following standard order:
//          the cards of the lowest suit arranged from lowest rank to
//          highest rank, followed by the cards of the next lowest suit
//          in order from lowest to highest rank, and so on.
// NOTE: The standard order is the same as that in pack.in.
// NOTE: Do NOT use pack.in in your implementation of this function
Pack::Pack() {
	// Iterate through all suits
	for (int i = 0; i < NUM_SUITS; ++i) {

		// Iterate through all ranks present
		for (int j = LOWEST_RANK_INDEX; j < NUM_RANKS; ++j) {
			cards[i * (NUM_RANKS - LOWEST_RANK_INDEX) + j - LOWEST_RANK_INDEX]
				= Card(RANK_NAMES_BY_WEIGHT[j], SUIT_NAMES_BY_WEIGHT[i]);
		}
	}
	next = 0;
}

// REQUIRES: pack_input contains a representation of a Pack in the
//           format required by the project specification
// MODIFIES: pack_input
// EFFECTS: Initializes Pack by reading from pack_input.
Pack::Pack(std::istream& pack_input) {
	std::string rank, of, suit;
	for (int i = 0; i < PACK_SIZE; ++i) {
		pack_input >> rank >> of >> suit;
		cards[i] = Card(rank, suit);
	}
	next = 0;
}

// REQUIRES: cards remain in the Pack
// EFFECTS: Returns the next card in the pack and increments the next index
Card Pack::deal_one() {
	// Check REQUIRES clause
	assert(next < PACK_SIZE);

	return cards[next++];
}

// EFFECTS: Resets next index to first card in the Pack
void Pack::reset() {
	next = 0;
}

// EFFECTS: Shuffles the Pack and resets the next index. This
//          performs an in shuffle seven times. See
//          https://en.wikipedia.org/wiki/In_shuffle.
void Pack::shuffle() {
	// Repeat process NUM_SHUFFLES times
	for (int i = 0; i < NUM_SHUFFLES; ++i) {
		// Create array for bottom half of pack
		std::array<Card, PACK_SIZE / 2 + PACK_SIZE % 2> bottom_half;

		// Create array for top half of pack
		std::array<Card, PACK_SIZE / 2> top_half;

		// Create array for shuffled pack
		std::array<Card, PACK_SIZE> new_cards;

		// Initialize top half
		for (int j = 0; j < PACK_SIZE / 2; ++j) {
			top_half[j] = cards[j];
		}

		// Initialize bottom half
		for (int j = PACK_SIZE / 2; j < PACK_SIZE; ++j) {
			bottom_half[j - (PACK_SIZE / 2)] = cards[j];
		}

		// In shuffle procedure
		for (int j = 0; j < PACK_SIZE; j += 2) {
			new_cards[j] = bottom_half[j / 2];
		}
		for (int j = 1; j < PACK_SIZE; j += 2) {
			new_cards[j] = top_half[(j - 1) / 2];
		}

		// Replace current pack with shuffled version
		cards = new_cards;
	}
	reset();
}

// EFFECTS: returns true if there are no more cards left in the pack
bool Pack::empty() const {
	return next >= PACK_SIZE;
}