#include "Player.h"
#include "unit_test_framework.h"

#include <iostream>
#include <sstream>

using namespace std;

// Testing get_name
TEST(test_player_get_name) {
    Player * alice = Player_factory("Alice", "Simple");
    ASSERT_EQUAL("Alice", alice->get_name());

    delete alice;
}

// Testing Player_factory, <<
TEST(test_player_Player_factory__print) {
	// Test for human player
	Player * human = Player_factory("Harry", "Human");
	ostringstream oss;
	oss << *human;
	ASSERT_EQUAL(oss.str(), "Harry");

	// Test for simple player
	oss.str("");
	Player * simple = Player_factory("Sam", "Simple");
	oss << *simple;
	ASSERT_EQUAL(oss.str(), "Sam");

	delete simple;
	delete human;
}

static void add_cards(Player *player) {
	vector<Card> hand;

	Card two_spades;
	Card three_hearts(Card::RANK_THREE, Card::SUIT_HEARTS);
	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	Card six_spades(Card::RANK_SIX, Card::SUIT_SPADES);

	hand.push_back(two_spades);
	hand.push_back(three_hearts);
	hand.push_back(four_clubs);
	hand.push_back(five_diamonds);
	hand.push_back(six_spades);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing make_trump for simple player
TEST(test_simple_player_make_trump) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards(bob);

	// Round 1

	// Case where player has no trump face cards

	// Case where player is dealer

	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	string trump = Card::SUIT_SPADES;
	bool orderup = bob->make_trump(nine_spades, true, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_SPADES);

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	trump = Card::SUIT_HEARTS;
	orderup = bob->make_trump(seven_hearts, true, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_HEARTS);

	// Case where player is not dealer

	trump = Card::SUIT_SPADES;
	orderup = bob->make_trump(nine_spades, false, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_SPADES);

	trump = Card::SUIT_HEARTS;
	orderup = bob->make_trump(seven_hearts, false, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_HEARTS);

	delete bob;
}

static void add_cards2(Player *player) {
	vector<Card> hand;

	Card queen_spades(Card::RANK_QUEEN, Card::SUIT_SPADES);
	Card king_hearts(Card::RANK_KING, Card::SUIT_HEARTS);
	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	Card ace_spades(Card::RANK_ACE, Card::SUIT_SPADES);

	hand.push_back(queen_spades);
	hand.push_back(king_hearts);
	hand.push_back(four_clubs);
	hand.push_back(five_diamonds);
	hand.push_back(ace_spades);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing make_trump for simple player
TEST(test_simple_player_make_trump2) {
	Player * cathy = Player_factory("Cathy", "Simple");
	add_cards2(cathy);

	// Round 1

	// Case where player is dealer

	// Case where player has two trump face cards
	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	string trump = Card::SUIT_SPADES;
	bool orderup = cathy->make_trump(nine_spades, true, 1, trump);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_SPADES);

	// Case where player has only one trump face cards
	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	trump = Card::SUIT_HEARTS;
	orderup = cathy->make_trump(seven_hearts, true, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_HEARTS);

	// Case where player is not dealer

	// Case where player has two trump face cards
	trump = Card::SUIT_SPADES;
	orderup = cathy->make_trump(nine_spades, false, 1, trump);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_SPADES);

	// Case where player has only one trump face card
	trump = Card::SUIT_HEARTS;
	orderup = cathy->make_trump(seven_hearts, false, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_HEARTS);

	delete cathy;
}

static void add_cards3(Player *player) {
	vector<Card> hand;

	Card queen_spades(Card::RANK_QUEEN, Card::SUIT_SPADES);
	Card king_hearts(Card::RANK_KING, Card::SUIT_HEARTS);
	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);

	hand.push_back(queen_spades);
	hand.push_back(king_hearts);
	hand.push_back(four_clubs);
	hand.push_back(five_diamonds);
	hand.push_back(jack_clubs);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing make_trump for simple player
TEST(test_simple_player_make_trump3) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards3(bob);

	// Round 1

	// Cases with bowers

	// Case where player is dealer

	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	string trump = Card::SUIT_SPADES;
	bool orderup = bob->make_trump(nine_spades, true, 1, trump);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_SPADES);

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	trump = Card::SUIT_HEARTS;
	orderup = bob->make_trump(seven_hearts, true, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_HEARTS);

	// Case where player is not dealer

	trump = Card::SUIT_SPADES;
	orderup = bob->make_trump(nine_spades, false, 1, trump);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_SPADES);

	trump = Card::SUIT_HEARTS;
	orderup = bob->make_trump(seven_hearts, false, 1, trump);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(trump, Card::SUIT_HEARTS);

	delete bob;
}

// Testing make_trump for simple player
TEST(test_simple_player_make_trump4) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards(bob);

	string order_up = "";

	// Round 2

	// Case with no next face cards

	// Case where player is dealer

	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	bool orderup = bob->make_trump(nine_spades, true, 2, order_up);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(order_up, Card::SUIT_CLUBS);

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	order_up = "";
	orderup = bob->make_trump(seven_hearts, true, 2, order_up);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(order_up, Card::SUIT_DIAMONDS);

	// Case where player is not dealer

	order_up = "";
	orderup = bob->make_trump(nine_spades, false, 2, order_up);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(order_up, "");

	order_up = "";
	orderup = bob->make_trump(seven_hearts, false, 2, order_up);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(order_up, "");

	delete bob;
}

static void add_cards5(Player *player) {
	vector<Card> hand;

	Card four_spades(Card::RANK_FOUR, Card::SUIT_SPADES);
	Card king_hearts(Card::RANK_KING, Card::SUIT_HEARTS);
	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);

	hand.push_back(four_spades);
	hand.push_back(king_hearts);
	hand.push_back(four_clubs);
	hand.push_back(five_diamonds);
	hand.push_back(jack_clubs);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing make_trump for simple player
TEST(test_simple_player_make_trump5) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards5(bob);

	string order_up = "";

	// Round 2

	// Case with one or more next face cards

	// Case where player is dealer

	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	bool orderup = bob->make_trump(nine_spades, false, 2, order_up);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(order_up, Card::SUIT_CLUBS);

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	order_up = "";
	orderup = bob->make_trump(seven_hearts, false, 2, order_up);
	ASSERT_FALSE(orderup);
	ASSERT_EQUAL(order_up, "");

	// Case where player is not dealer

	Card ten_clubs(Card::RANK_TEN, Card::SUIT_CLUBS);
	order_up = "";
	orderup = bob->make_trump(ten_clubs, false, 2, order_up);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(order_up, Card::SUIT_SPADES);

	Card queen_diamonds(Card::RANK_QUEEN, Card::SUIT_DIAMONDS);
	order_up = "";
	orderup = bob->make_trump(queen_diamonds, false, 2, order_up);
	ASSERT_TRUE(orderup);
	ASSERT_EQUAL(order_up, Card::SUIT_HEARTS);

	delete bob;
}

// Testing add_and_discard for simple player
TEST(test_simple_player_add_and_discard) {
	Player * drew = Player_factory("Drew", "Simple");

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	drew->add_card(seven_hearts);

	Card seven_spades(Card::RANK_SEVEN, Card::SUIT_SPADES);

	Card ten_spades(Card::RANK_TEN, Card::SUIT_SPADES);

	// Case where player picks up upcard

	Card upcard = seven_spades;
	drew->add_and_discard(upcard);

	Card lead = drew->lead_card(upcard.get_suit());
	ASSERT_EQUAL(lead, seven_spades);

	// Case where player discards upcard
	drew->add_card(ten_spades);
	drew->add_and_discard(upcard);
	lead = drew->lead_card(upcard.get_suit());
	ASSERT_EQUAL(lead, ten_spades);

	// Case for left bower
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	drew->add_card(jack_clubs);
	drew->add_and_discard(upcard);
	lead = drew->lead_card(upcard.get_suit());
	ASSERT_EQUAL(lead, jack_clubs);

	// Case for right bower
	Card king_spades(Card::RANK_KING, Card::SUIT_SPADES);
	upcard = king_spades;
	Card jack_spades(Card::RANK_JACK, Card::SUIT_SPADES);
	drew->add_card(jack_spades);
	drew->add_and_discard(upcard);
	lead = drew->lead_card(upcard.get_suit());
	ASSERT_EQUAL(lead, jack_spades);

	delete drew;
}


static void add_cards6(Player *player) {
	vector<Card> hand;

	Card four_spades(Card::RANK_FOUR, Card::SUIT_SPADES);
	Card king_spades(Card::RANK_KING, Card::SUIT_SPADES);
	Card six_spades(Card::RANK_FOUR, Card::SUIT_SPADES);
	Card seven_spades(Card::RANK_FIVE, Card::SUIT_SPADES);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);

	hand.push_back(four_spades);
	hand.push_back(king_spades);
	hand.push_back(six_spades);
	hand.push_back(seven_spades);
	hand.push_back(jack_clubs);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing lead_card for simple player
TEST(test_simple_player_lead_card) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards6(bob);

	string trump = Card::SUIT_SPADES;

	// Case where player has only trump cards

	Card lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_CLUBS);

	lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_KING);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_SPADES);

	delete bob;
}

static void add_cards7(Player *player) {
	vector<Card> hand;

	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	Card king_hearts(Card::RANK_KING, Card::SUIT_HEARTS);
	Card king_diamonds(Card::RANK_KING, Card::SUIT_DIAMONDS);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	Card eight_clubs(Card::RANK_EIGHT, Card::SUIT_CLUBS);

	hand.push_back(nine_spades);
	hand.push_back(king_hearts);
	hand.push_back(king_diamonds);
	hand.push_back(jack_clubs);
	hand.push_back(eight_clubs);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing lead card for simple player
TEST(test_simple_player_lead_card2) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards7(bob);

	string trump = Card::SUIT_SPADES;

	// Case where player has both trump and non-trump

	Card lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_KING);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_DIAMONDS);

	lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_KING);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_HEARTS);

	lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_EIGHT);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_CLUBS);

	// Cases with left bower

	lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_CLUBS);

	lead = bob->lead_card(trump);
	ASSERT_EQUAL(lead.get_rank(), Card::RANK_NINE);
	ASSERT_EQUAL(lead.get_suit(), Card::SUIT_SPADES);

	delete bob;
}

// Testing play card for simple player
TEST(test_simple_player_play_card) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards(bob);

	// Case where trump and led suit are the same

	string trump = Card::SUIT_SPADES;
	Card lead(Card::RANK_NINE, Card::SUIT_SPADES);

	Card play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_SIX);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_TWO);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_THREE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_HEARTS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FOUR);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_CLUBS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FIVE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_DIAMONDS);

	// Case where trump and led suit are different

	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	lead = jack_hearts;

	add_cards(bob);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_THREE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_HEARTS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FOUR);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_CLUBS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FIVE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_DIAMONDS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_TWO);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_SIX);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	// Case where led card is left bower

	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	lead = jack_clubs;

	add_cards(bob);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_SIX);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_TWO);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_THREE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_HEARTS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FOUR);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_CLUBS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FIVE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_DIAMONDS);

	delete bob;
}

static void add_cards8(Player *player) {
	vector<Card> hand;

	Card jack_spades(Card::RANK_JACK, Card::SUIT_SPADES);
	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	Card jack_diamonds(Card::RANK_JACK, Card::SUIT_DIAMONDS);
	Card ace_clubs(Card::RANK_ACE, Card::SUIT_SPADES);

	hand.push_back(jack_spades);
	hand.push_back(jack_hearts);
	hand.push_back(jack_clubs);
	hand.push_back(jack_diamonds);
	hand.push_back(ace_clubs);

	for (int i = 0; i < 5; ++i) {
		player->add_card(hand[i]);
	}
}

// Testing play card for simple player
TEST(test_simple_player_play_card2) {
	Player * bob = Player_factory("Bob", "Simple");
	add_cards3(bob);

	// Case where trump and led suit are the same

	// Case with left bower

	string trump = Card::SUIT_SPADES;
	Card lead(Card::RANK_NINE, Card::SUIT_SPADES);

	Card play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_CLUBS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_QUEEN);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FOUR);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_CLUBS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_FIVE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_DIAMONDS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_KING);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_HEARTS);

	// Cases with multiple jacks

	add_cards8(bob);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_CLUBS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_ACE);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_SPADES);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_HEARTS);

	play = bob->play_card(lead, trump);
	ASSERT_EQUAL(play.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(play.get_suit(), Card::SUIT_DIAMONDS);

	delete bob;
}

TEST_MAIN()
