/* Card.cpp
*
* Implementation of Card class
*
* by Ryan Hennessey
* rjhenn@umich.edu
* 2018-2-11
*/

#include "Card.h"
#include <string>
#include <cassert>
#include <iostream>

//EFFECTS Verifies that the rank is a valid rank
static void check_rank(const std::string &rank);

//EFFECTS Verifies that the suit is a valid suit
static void check_suit(const std::string &suit);

//EFFECTS Initializes Card to the Two of Spades
Card::Card() : rank(RANK_TWO), suit(SUIT_SPADES) {}

//REQUIRES rank is one of "Two", "Three", "Four", "Five", "Six", "Seven",
//  "Eight", "Nine", "Ten", "Jack", "Queen", "King", "Ace"
//  suit is one of "Spades", "Hearts", "Clubs", "Diamonds"
//EFFECTS Initializes Card to specified rank and suit
Card::Card(const std::string &rank_in, const std::string &suit_in) 
	: rank(rank_in), suit(suit_in) {
	check_rank(rank_in);
	check_suit(suit_in);
}

//EFFECTS Returns the rank
std::string Card::get_rank() const {
	return rank;
}

//EFFECTS Returns the suit.  Does not consider trump.
std::string Card::get_suit() const {
	return suit;
}

//REQUIRES trump is a valid suit
//EFFECTS Returns the suit
//HINT: the left bower is the trump suit!
std::string Card::get_suit(const std::string &trump) const {
	// Check REQUIRES clause
	check_suit(trump);

	if (is_left_bower(trump)) {
		return trump;
	}
	return suit;
}

//EFFECTS Returns true if card is a face card (Jack, Queen, King or Ace)
bool Card::is_face() const {
	return rank == RANK_JACK || rank == RANK_QUEEN  
		|| rank == RANK_KING || rank == RANK_ACE;
}

//REQUIRES trump is a valid suit
//EFFECTS Returns true if card is the Jack of the trump suit
bool Card::is_right_bower(const std::string &trump) const {
	// Check REQUIRES clause
	check_suit(trump);

	return rank == RANK_JACK && suit == trump;
}

//REQUIRES trump is a valid suit
//EFFECTS Returns true if card is the Jack of the next suit
bool Card::is_left_bower(const std::string &trump) const {
	// Check REQUIRES clause
	check_suit(trump);

	return rank == RANK_JACK && suit == Suit_next(trump);
}

//REQUIRES trump is a valid suit
//EFFECTS Returns true if the card is a trump card.  All cards of the trump
// suit are trump cards.  The left bower is also a trump card.
bool Card::is_trump(const std::string &trump) const {
	// Check REQUIRES clause
	check_suit(trump);

	return get_suit(trump) == trump;
}

//EFFECTS Returns true if lhs is lower value than rhs.
//  Does not consider trump.
bool operator<(const Card &lhs, const Card &rhs) {
	// Check for equality
	if (lhs == rhs) {
		return false;
	}

	// Use suit as tiebreaker if ranks are the same
	else if (lhs.get_rank() == rhs.get_rank()) {
		for (int i = 0; i < NUM_SUITS; ++i) {
			if (SUIT_NAMES_BY_WEIGHT[i] == lhs.get_suit()) {
				return true;
			}
			else if (SUIT_NAMES_BY_WEIGHT[i] == rhs.get_suit()) {
				return false;
			}
		}
	}

	// Compare ranks
	else {
		for (int i = 0; i < NUM_RANKS; ++i) {
			if (RANK_NAMES_BY_WEIGHT[i] == lhs.get_rank()) {
				return true;
			}
			else if (RANK_NAMES_BY_WEIGHT[i] == rhs.get_rank()) {
				return false;
			}
		}
	}

	// Should never get here
	assert(false);
	return false;
}

//EFFECTS Returns true if lhs is higher value than rhs.
//  Does not consider trump.
bool operator>(const Card &lhs, const Card &rhs) {
	// Check for equality
	if (lhs == rhs) {
		return false;
	}

	// Use suit as tiebreaker if ranks are the same
	else if (lhs.get_rank() == rhs.get_rank()) {
		for (int i = 0; i < NUM_SUITS; ++i) {
			if (SUIT_NAMES_BY_WEIGHT[i] == lhs.get_suit()) {
				return false;
			}
			else if (SUIT_NAMES_BY_WEIGHT[i] == rhs.get_suit()) {
				return true;
			}
		}
	}

	// Compare ranks
	else {
		for (int i = 0; i < NUM_RANKS; ++i) {
			if (RANK_NAMES_BY_WEIGHT[i] == lhs.get_rank()) {
				return false;
			}
			else if (RANK_NAMES_BY_WEIGHT[i] == rhs.get_rank()) {
				return true;
			}
		}
	}

	// Should never get here
	assert(false);
	return false;
}

//EFFECTS Returns true if lhs is same card as rhs.
//  Does not consider trump.
bool operator==(const Card &lhs, const Card &rhs) {
	return lhs.get_rank() == rhs.get_rank() && lhs.get_suit() == rhs.get_suit();
}

//EFFECTS Returns true if lhs is not the same card as rhs.
//  Does not consider trump.
bool operator!=(const Card &lhs, const Card &rhs) {
	return lhs.get_rank() != rhs.get_rank() || lhs.get_suit() != rhs.get_suit();
}

//REQUIRES suit is a valid suit
//EFFECTS returns the next suit, which is the suit of the same color
std::string Suit_next(const std::string &suit) {
	// Check REQUIRES clause
	check_suit(suit);

	if (suit == Card::SUIT_SPADES) {
		return Card::SUIT_CLUBS;
	}
	else if (suit == Card::SUIT_HEARTS) {
		return Card::SUIT_DIAMONDS;
	}
	else if (suit == Card::SUIT_CLUBS) {
		return Card::SUIT_SPADES;
	}
	else if (suit == Card::SUIT_DIAMONDS) {
		return Card::SUIT_HEARTS;
	}

	// Should never get here
	assert(false);
	return "Unknown";
}

//EFFECTS Prints Card to stream, for example "Two of Spades"
std::ostream & operator<<(std::ostream &os, const Card &card) {
	return os << card.get_rank() << " of " << card.get_suit();
}

//REQUIRES trump is a valid suit
//EFFECTS Returns true if a is lower value than b.  Uses trump to determine
// order, as described in the spec.
bool Card_less(const Card &a, const Card &b, const std::string &trump) {
	// Check REQUIRES clause
	check_suit(trump);
	
	// Check for equality
	if (a == b) {
		return false;
	}

	// Case where both cards are trump
	else if (a.get_suit(trump) == trump && b.get_suit(trump) == trump) {
		if (a.is_right_bower(trump)) {
			return false;
		}
		else if (b.is_right_bower(trump)) {
			return true;
		}
		else if (a.is_left_bower(trump)) {
			return false;
		}
		else if (b.is_left_bower(trump)) {
			return true;
		}
		return a < b;
	}

	// Case where only one card is trump
	else if (a.get_suit(trump) == trump) {
		return false;
	}
	else if (b.get_suit(trump) == trump) {
		return true;
	}

	// Case where neither are trump
	return a < b;
}

//REQUIRES trump is a valid suit
//EFFECTS Returns true if a is lower value than b.  Uses both the trump suit
//  and the suit led to determine order, as described in the spec.
bool Card_less(const Card &a, const Card &b, 
	const Card &led_card, const std::string &trump) {
	// Check REQUIRES clause
	check_suit(trump);

	// Check for equality
	if (a == b) {
		return false;
	}

	// Case where both cards are trump
	else if (a.get_suit(trump) == trump && b.get_suit(trump) == trump) {
		if (a.is_right_bower(trump)) {
			return false;
		}
		else if (b.is_right_bower(trump)) {
			return true;
		}
		else if (a.is_left_bower(trump)) {
			return false;
		}
		else if (b.is_left_bower(trump)) {
			return true;
		}
		return a < b;
	}

	// Case where only one card is trump
	else if (a.get_suit(trump) == trump) {
		return false;
	}
	else if (b.get_suit(trump) == trump) {
		return true;
	}

	// Case where both cards are led suit
	else if (a.get_suit(trump) == led_card.get_suit(trump)
		&& b.get_suit(trump) == led_card.get_suit(trump)) {
		return a < b;
	}

	// Case where only one card is led suit, neither are trump
	else if (a.get_suit(trump) == led_card.get_suit(trump)) {
		return false;
	}
	else if (b.get_suit(trump) == led_card.get_suit(trump)) {
		return true;
	}

	// Case where both cards are neither trump or led suit
	return a < b;
}

static void check_rank(const std::string &rank) {
	bool good_rank = false;
	for (int i = 0; i < NUM_RANKS; ++i) {
		if (rank == RANK_NAMES_BY_WEIGHT[i]) {
			good_rank = true;
			break;
		}
	}
	assert(good_rank);
}

static void check_suit(const std::string &suit) {
	bool good_suit = false;
	for (int i = 0; i < NUM_SUITS; ++i) {
		if (suit == SUIT_NAMES_BY_WEIGHT[i]) {
			good_suit = true;
			break;
		}
	}
	assert(good_suit);
}
