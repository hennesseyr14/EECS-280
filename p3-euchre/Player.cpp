/* Player.cpp
*
* Implementation of Player class
*
* by Ryan Hennessey
* rjhenn@umich.edu
* 2018-2-11
*/

#include "Player.h"
#include "Card.h"
#include <string>
#include <vector>
#include <cassert>
#include <iostream>
#include <algorithm>

class Simple : public Player {
public:
	//EFFECTS Simple player constructor
	Simple(const std::string &in_name) : name(in_name) {}

	//EFFECTS returns player's name
	const std::string & get_name() const override {
		return name;
	}

	//REQUIRES player has less than MAX_HAND_SIZE cards
	//EFFECTS  adds Card c to Player's hand
	void add_card(const Card &c) override {
		// Check REQUIRES clause
		assert(hand.size() < MAX_HAND_SIZE);

		hand.push_back(c);
	}

	//REQUIRES round is 1 or 2
	//MODIFIES order_up_suit
	//EFFECTS If Player wishes to order up a trump suit then return true and
	//  change order_up_suit to desired suit.  If Player wishes to pass, then 
	//  do not modify order_up_suit and return false.
	bool make_trump(const Card &upcard, bool is_dealer,
		int round, std::string &order_up_suit) const override {
		// Check REQUIRES clause
		assert(round == 1 || round == 2);

		std::string trump = upcard.get_suit();
		if (round == 1) {
			// Count the number of trump face cards in hand
			int trump_face_count = 0;
			for (int i = 0; i < (int) hand.size(); ++i) {
				if (hand[i].is_trump(trump) && hand[i].is_face()) {
					++trump_face_count;
				}
			}

			// Order up if they have the desired amount
			if (trump_face_count >= 2) {
				order_up_suit = trump;
				return true;
			}

			// Don't order up otherwise
			return false;
		}
		else if (round == 2) {
			std::string next = Suit_next(trump);

			// Screw the dealer
			if (is_dealer) {
				order_up_suit = next;
				return true;
			}

			// Count the number of face cards of the suit which is the same
			// color as that of the upcard
			int next_face_count = 0;
			for (int i = 0; i < (int) hand.size(); ++i) {
				if (hand[i].get_suit(next) == next && hand[i].is_face()) {
					++next_face_count;
				}
			}

			// Order up if they have the desired amount
			if (next_face_count >= 1) {
				order_up_suit = next;
				return true;
			}

			// Don't order up otherwise
			return false;
		}
		// Should never get here
		assert(false);
		return false;
	}

	//REQUIRES Player has at least one card
	//EFFECTS  Player adds one card to hand and removes one card from hand.
	void add_and_discard(const Card &upcard) override {
		// Check REQUIRES clause
		assert(hand.size() >= 1);
		
		// Add upcard to hand
		hand.push_back(upcard);

		// Find lowest card in hand
		Card discarded = hand[0];
		int discarded_index = 0;
		for (int i = 1; i < (int) hand.size(); ++i) {
			if (Card_less(hand[i], discarded, upcard.get_suit())) {
				discarded = hand[i];
				discarded_index = i;
			}
		}

		// Discard lowest card in hand
		hand.erase(hand.begin() + discarded_index);
	}

	//REQUIRES Player has at least one card, trump is a valid suit
	//EFFECTS  Leads one Card from Player's hand according to their strategy
	//  "Lead" means to play the first Card in a trick.  The card
	//  is removed the player's hand.
	Card lead_card(const std::string &trump) override {
		// Check REQUIRES clause
		assert(hand.size() >= 1);

		Card lead = hand[0];
		int lead_index = 0;

		// Check if player only has trump cards
		bool all_trump = true;
		for (int i = 0; i < (int) hand.size(); ++i) {
			if (!hand[i].is_trump(trump)) {
				all_trump = false;
				break;
			}
		}

		// Case where player has only trump cards
		if (all_trump) {
			
			// Find highest card
			for (int i = 1; i < (int) hand.size(); ++i) {
				if (Card_less(lead, hand[i], trump)) {
					lead = hand[i];
					lead_index = i;
				}
			}

			// Remove card from hand and return it
			hand.erase(hand.begin() + lead_index);
			return lead;
		}

		// Case where not all of the player's cards are trump
		else {
			// Find a non-trump card
			while (lead.get_suit(trump) == trump) {
				++lead_index;
				lead = hand[lead_index];
			}

			// Find the highest non-trump card
			for (int i = 0; i < (int) hand.size(); ++i) {
				if (Card_less(lead, hand[i], trump)
					&& hand[i].get_suit(trump) != trump) {
					lead = hand[i];
					lead_index = i;
				}
			}

			// Remove card from hand and return it
			hand.erase(hand.begin() + lead_index);
			return lead;
		}
	}

	//REQUIRES Player has at least one card, trump is a valid suit
	//EFFECTS  Plays one Card from Player's hand according to their strategy.
	//  The card is removed from the player's hand.
	Card play_card(const Card &led_card, const std::string &trump) override {
		// Check REQUIRES clause
		assert(hand.size() >= 1);

		Card play = hand[0];
		int play_index = 0;

		// Check if player can follow suit with led card
		bool can_follow_suit = false;
		for (int i = 0; i < (int) hand.size(); ++i) {
			if (hand[i].get_suit(trump) == led_card.get_suit(trump)) {
				can_follow_suit = true;

				// Set the card to a card of the led suit
				play = hand[i];
				play_index = i;

				break;
			}
		}

		// Case where player can follow suit
		if (can_follow_suit) {
			for (int i = 0; i < (int) hand.size(); ++i) {
				if (Card_less(play, hand[i], trump)
					&& hand[i].get_suit(trump) == led_card.get_suit(trump)) {
					play = hand[i];
					play_index = i;
				}
			}

			// Remove card from hand and return it
			hand.erase(hand.begin() + play_index);
			return play;
		}

		// Case where player cannot follow suit
		else {
			// Find lowest card
			for (int i = 0; i < (int) hand.size(); ++i) {
				if (Card_less(hand[i], play, trump)) {
					play = hand[i];
					play_index = i;
				}
			}

			// Remove card from hand and return it
			hand.erase(hand.begin() + play_index);
			return play;
		}
	}
	
private:
	std::string name;
	std::vector<Card> hand;
};

class Human : public Player {
public:
	//EFFECTS Human player constructor
	Human(const std::string &in_name) : name(in_name) {}

	//EFFECTS returns player's name
	const std::string & get_name() const override {
		return name;
	}

	//REQUIRES player has less than MAX_HAND_SIZE cards
	//EFFECTS  adds Card c to Player's hand
	void add_card(const Card &c) override {
		// Check REQUIRES clause
		assert(hand.size() < MAX_HAND_SIZE);

		// Add card to hand and sort the hand
		hand.push_back(c);
		std::sort(hand.begin(), hand.end());
	}

	//REQUIRES round is 1 or 2
	//MODIFIES order_up_suit
	//EFFECTS If Player wishes to order up a trump suit then return true and
	//  change order_up_suit to desired suit.  If Player wishes to pass, then 
	//  do not modify order_up_suit and return false.
	bool make_trump(const Card &upcard, bool is_dealer,
		int round, std::string &order_up_suit) const override {
		// Check REQUIRES clause
		assert(round == 1 || round == 2);

		// Print hand
		for (int i = 0; i < (int)hand.size(); ++i) {
			std::cout << "Human player " << name << "'s hand: ["
				<< i << "] " << hand[i] << std::endl;
		}

		// Prompt player for their decision
		std::cout << "Human player " << name
			<< ", please enter a suit, or \"pass\":" << std::endl;

		// Read in decision
		std::string decision;
		std::cin >> decision;

		// Case where player passes
		if (decision == "pass") {
			return false;
		}

		// Case where player orders up
		order_up_suit = decision;
		return true;
	}

	//REQUIRES Player has at least one card
	//EFFECTS  Player adds one card to hand and removes one card from hand.
	void add_and_discard(const Card &upcard) override {
		// Check REQUIRES clause
		assert(hand.size() >= 1);

		// Print hand, upcard
		print_hand();
		std::cout << "Discard upcard: [-1]" << std::endl;

		// Prompt player for selection
		std::cout << "Human player " << name
			<< ", please select a card to discard: ";

		// Read in selection
		int selection;
		std::cin >> selection;

		// If upcard is not selected, add it to the hand
		// and remove the selected card
		if (selection != -1) {
			hand.erase(hand.begin() + selection);
			hand.push_back(upcard);

			// Sort hand
			std::sort(hand.begin(), hand.end());
		}
	}

	//REQUIRES Player has at least one card, trump is a valid suit
	//EFFECTS  Leads one Card from Player's hand according to their strategy
	//  "Lead" means to play the first Card in a trick.  The card
	//  is removed the player's hand.
	Card lead_card(const std::string &trump) override {
		// Check REQUIRES clause
		assert(hand.size() >= 1);

		// Print hand and prompt player for their selection
		print_hand();
		prompt_selection();

		// Read in selection
		int selection;
		std::cin >> selection;
		Card lead = hand[selection];

		// Remove card from hand and return it
		hand.erase(hand.begin() + selection);
		return lead;
	}

	//REQUIRES Player has at least one card, trump is a valid suit
	//EFFECTS  Plays one Card from Player's hand according to their strategy.
	//  The card is removed from the player's hand.
	Card play_card(const Card &led_card, const std::string &trump) override {
		// Check REQUIRES clause
		assert(hand.size() >= 1);

		// Print hand and prompt player for their selection
		print_hand();
		prompt_selection();

		// Read in selection
		int selection;
		std::cin >> selection;
		Card play = hand[selection];

		// Remove card from hand and return it
		hand.erase(hand.begin() + selection);
		return play;
	}

private:
	std::string name;
	std::vector<Card> hand;

	//REQUIRES Hand is already sorted
	//EFFECTS Prints the player's hand
	void print_hand() {
		for (int i = 0; i < (int)hand.size(); ++i) {
			std::cout << "Human player " << name << "'s hand: ["
				<< i << "] " << hand[i] << std::endl;
		}
	}
	
	//EFFECTS Prints a prompt asking the player to select a card
	void prompt_selection() {
		std::cout << "Human player " << name
			<< ", please select a card:" << std::endl;
	}
};

//EFFECTS: Returns a pointer to a player with the given name and strategy
//To create an object that won't go out of scope when the function returns,
//use "return new Simple(name)" or "return new Human(name)"
//Don't forget to call "delete" on each Player* after the game is over
Player * Player_factory(const std::string &name, const std::string &strategy) {
	if (strategy == "Simple") {
		return new Simple(name);
	}
	else if (strategy == "Human") {
		return new Human(name);
	}

	// Should never get here
	assert(false);
	return nullptr;
}

//EFFECTS: Prints player's name to os
std::ostream & operator<<(std::ostream &os, const Player &p) {
	return os << p.get_name();
}