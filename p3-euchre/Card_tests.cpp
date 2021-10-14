#include "Card.h"
#include "unit_test_framework.h"
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

// Testing non-default constructor
TEST(test_card_ctor) {
    Card c(Card::RANK_ACE, Card::SUIT_HEARTS);
    ASSERT_EQUAL(Card::RANK_ACE, c.get_rank());
    ASSERT_EQUAL(Card::SUIT_HEARTS, c.get_suit());
}

// Testing both card constructors, get_rank, and get_suit
TEST(test_card_ctors__get_rank__get_suit) {
	// Default constructor
	Card two_spades;
	ASSERT_EQUAL(two_spades.get_rank(), Card::RANK_TWO);
	ASSERT_EQUAL(two_spades.get_suit(), Card::SUIT_SPADES);

	// Non-default constructor for all ranks and suit

	Card three_hearts(Card::RANK_THREE, Card::SUIT_HEARTS);
	ASSERT_EQUAL(three_hearts.get_rank(), Card::RANK_THREE);
	ASSERT_EQUAL(three_hearts.get_suit(), Card::SUIT_HEARTS);

	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	ASSERT_EQUAL(four_clubs.get_rank(), Card::RANK_FOUR);
	ASSERT_EQUAL(four_clubs.get_suit(), Card::SUIT_CLUBS);

	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	ASSERT_EQUAL(five_diamonds.get_rank(), Card::RANK_FIVE);
	ASSERT_EQUAL(five_diamonds.get_suit(), Card::SUIT_DIAMONDS);

	Card six_spades(Card::RANK_SIX, Card::SUIT_SPADES);
	ASSERT_EQUAL(six_spades.get_rank(), Card::RANK_SIX);
	ASSERT_EQUAL(six_spades.get_suit(), Card::SUIT_SPADES);

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	ASSERT_EQUAL(seven_hearts.get_rank(), Card::RANK_SEVEN);
	ASSERT_EQUAL(seven_hearts.get_suit(), Card::SUIT_HEARTS);

	Card eight_clubs(Card::RANK_EIGHT, Card::SUIT_CLUBS);
	ASSERT_EQUAL(eight_clubs.get_rank(), Card::RANK_EIGHT);
	ASSERT_EQUAL(eight_clubs.get_suit(), Card::SUIT_CLUBS);

	Card nine_diamonds(Card::RANK_NINE, Card::SUIT_DIAMONDS);
	ASSERT_EQUAL(nine_diamonds.get_rank(), Card::RANK_NINE);
	ASSERT_EQUAL(nine_diamonds.get_suit(), Card::SUIT_DIAMONDS);

	Card ten_spades(Card::RANK_TEN, Card::SUIT_SPADES);
	ASSERT_EQUAL(ten_spades.get_rank(), Card::RANK_TEN);
	ASSERT_EQUAL(ten_spades.get_suit(), Card::SUIT_SPADES);

	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	ASSERT_EQUAL(jack_hearts.get_rank(), Card::RANK_JACK);
	ASSERT_EQUAL(jack_hearts.get_suit(), Card::SUIT_HEARTS);

	Card queen_clubs(Card::RANK_QUEEN, Card::SUIT_CLUBS);
	ASSERT_EQUAL(queen_clubs.get_rank(), Card::RANK_QUEEN);
	ASSERT_EQUAL(queen_clubs.get_suit(), Card::SUIT_CLUBS);

	Card king_diamonds(Card::RANK_KING, Card::SUIT_DIAMONDS);
	ASSERT_EQUAL(king_diamonds.get_rank(), Card::RANK_KING);
	ASSERT_EQUAL(king_diamonds.get_suit(), Card::SUIT_DIAMONDS);

	Card ace_spades(Card::RANK_ACE, Card::SUIT_SPADES);
	ASSERT_EQUAL(ace_spades.get_rank(), Card::RANK_ACE);
	ASSERT_EQUAL(ace_spades.get_suit(), Card::SUIT_SPADES);
}

// Testing get_suit(trump)
TEST(test_card_get_suit_trump) {
	string trump = Card::SUIT_SPADES;

	// Tests for normal cards

	Card two_spades;
	ASSERT_EQUAL(two_spades.get_suit(trump), Card::SUIT_SPADES);

	Card three_hearts(Card::RANK_THREE, Card::SUIT_HEARTS);
	ASSERT_EQUAL(three_hearts.get_suit(trump), Card::SUIT_HEARTS);

	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	ASSERT_EQUAL(four_clubs.get_suit(trump), Card::SUIT_CLUBS);

	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	ASSERT_EQUAL(five_diamonds.get_suit(trump), Card::SUIT_DIAMONDS);

	Card six_spades(Card::RANK_SIX, Card::SUIT_SPADES);
	ASSERT_EQUAL(six_spades.get_suit(trump), Card::SUIT_SPADES);

	// Right bower
	Card jack_spades(Card::RANK_JACK, Card::SUIT_SPADES);
	ASSERT_EQUAL(jack_spades.get_suit(trump), Card::SUIT_SPADES);

	// Normal jack
	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	ASSERT_EQUAL(jack_hearts.get_suit(trump), Card::SUIT_HEARTS);

	// Left bower
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	ASSERT_EQUAL(jack_clubs.get_suit(trump), Card::SUIT_SPADES);

	// Normal jack
	Card jack_diamonds(Card::RANK_JACK, Card::SUIT_DIAMONDS);
	ASSERT_EQUAL(jack_diamonds.get_suit(trump), Card::SUIT_DIAMONDS);

	// Tests for other possible trump suits

	trump = Card::SUIT_HEARTS;
	ASSERT_EQUAL(jack_spades.get_suit(trump), Card::SUIT_SPADES);
	ASSERT_EQUAL(jack_hearts.get_suit(trump), Card::SUIT_HEARTS);
	ASSERT_EQUAL(jack_clubs.get_suit(trump), Card::SUIT_CLUBS);
	ASSERT_EQUAL(jack_diamonds.get_suit(trump), Card::SUIT_HEARTS);

	trump = Card::SUIT_CLUBS;
	ASSERT_EQUAL(jack_spades.get_suit(trump), Card::SUIT_CLUBS);
	ASSERT_EQUAL(jack_hearts.get_suit(trump), Card::SUIT_HEARTS);
	ASSERT_EQUAL(jack_clubs.get_suit(trump), Card::SUIT_CLUBS);
	ASSERT_EQUAL(jack_diamonds.get_suit(trump), Card::SUIT_DIAMONDS);

	trump = Card::SUIT_DIAMONDS;
	ASSERT_EQUAL(jack_spades.get_suit(trump), Card::SUIT_SPADES);
	ASSERT_EQUAL(jack_hearts.get_suit(trump), Card::SUIT_DIAMONDS);
	ASSERT_EQUAL(jack_clubs.get_suit(trump), Card::SUIT_CLUBS);
	ASSERT_EQUAL(jack_diamonds.get_suit(trump), Card::SUIT_DIAMONDS);
}

// Testing is_face
TEST(test_card_is_face) {
	// Tests for all ranks and suits

	Card two_spades;
	ASSERT_FALSE(two_spades.is_face());

	Card three_hearts(Card::RANK_THREE, Card::SUIT_HEARTS);
	ASSERT_FALSE(three_hearts.is_face());

	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	ASSERT_FALSE(four_clubs.is_face());

	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	ASSERT_FALSE(five_diamonds.is_face());

	Card six_spades(Card::RANK_SIX, Card::SUIT_SPADES);
	ASSERT_FALSE(six_spades.is_face());

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	ASSERT_FALSE(seven_hearts.is_face());

	Card eight_clubs(Card::RANK_EIGHT, Card::SUIT_CLUBS);
	ASSERT_FALSE(eight_clubs.is_face());

	Card nine_diamonds(Card::RANK_NINE, Card::SUIT_DIAMONDS);
	ASSERT_FALSE(nine_diamonds.is_face());

	Card ten_spades(Card::RANK_TEN, Card::SUIT_SPADES);
	ASSERT_FALSE(ten_spades.is_face());

	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	ASSERT_TRUE(jack_hearts.is_face());

	Card queen_clubs(Card::RANK_QUEEN, Card::SUIT_CLUBS);
	ASSERT_TRUE(queen_clubs.is_face());

	Card king_diamonds(Card::RANK_KING, Card::SUIT_DIAMONDS);
	ASSERT_TRUE(king_diamonds.is_face());

	Card ace_spades(Card::RANK_ACE, Card::SUIT_SPADES);
	ASSERT_TRUE(ace_spades.is_face());
}

// Testing is_right_bower, is_left bower, is_trump
TEST(card_test_is_right_bower__is_left_bower__is_trump) {
	string trump = Card::SUIT_HEARTS;

	// Test for all ranks and suits

	Card two_spades;
	ASSERT_FALSE(two_spades.is_right_bower(trump));
	ASSERT_FALSE(two_spades.is_left_bower(trump));
	ASSERT_FALSE(two_spades.is_trump(trump));

	Card three_hearts(Card::RANK_THREE, Card::SUIT_HEARTS);
	ASSERT_FALSE(three_hearts.is_right_bower(trump));
	ASSERT_FALSE(three_hearts.is_left_bower(trump));
	ASSERT_TRUE(three_hearts.is_trump(trump));

	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	ASSERT_FALSE(four_clubs.is_right_bower(trump));
	ASSERT_FALSE(four_clubs.is_left_bower(trump));
	ASSERT_FALSE(four_clubs.is_trump(trump));

	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	ASSERT_FALSE(five_diamonds.is_right_bower(trump));
	ASSERT_FALSE(five_diamonds.is_left_bower(trump));
	ASSERT_FALSE(five_diamonds.is_trump(trump));

	Card six_spades(Card::RANK_SIX, Card::SUIT_SPADES);
	ASSERT_FALSE(six_spades.is_right_bower(trump));
	ASSERT_FALSE(six_spades.is_left_bower(trump));
	ASSERT_FALSE(six_spades.is_trump(trump));

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	ASSERT_FALSE(seven_hearts.is_right_bower(trump));
	ASSERT_FALSE(seven_hearts.is_left_bower(trump));
	ASSERT_TRUE(seven_hearts.is_trump(trump));

	Card eight_clubs(Card::RANK_EIGHT, Card::SUIT_CLUBS);
	ASSERT_FALSE(eight_clubs.is_right_bower(trump));
	ASSERT_FALSE(eight_clubs.is_left_bower(trump));
	ASSERT_FALSE(eight_clubs.is_trump(trump));

	Card nine_diamonds(Card::RANK_NINE, Card::SUIT_DIAMONDS);
	ASSERT_FALSE(nine_diamonds.is_right_bower(trump));
	ASSERT_FALSE(nine_diamonds.is_left_bower(trump));
	ASSERT_FALSE(nine_diamonds.is_trump(trump));

	Card ten_spades(Card::RANK_TEN, Card::SUIT_SPADES);
	ASSERT_FALSE(ten_spades.is_right_bower(trump));
	ASSERT_FALSE(ten_spades.is_left_bower(trump));
	ASSERT_FALSE(ten_spades.is_trump(trump));

	Card queen_clubs(Card::RANK_QUEEN, Card::SUIT_CLUBS);
	ASSERT_FALSE(queen_clubs.is_right_bower(trump));
	ASSERT_FALSE(queen_clubs.is_left_bower(trump));
	ASSERT_FALSE(queen_clubs.is_trump(trump));

	Card king_diamonds(Card::RANK_KING, Card::SUIT_DIAMONDS);
	ASSERT_FALSE(king_diamonds.is_right_bower(trump));
	ASSERT_FALSE(king_diamonds.is_left_bower(trump));
	ASSERT_FALSE(king_diamonds.is_trump(trump));

	Card ace_spades(Card::RANK_ACE, Card::SUIT_SPADES);
	ASSERT_FALSE(ace_spades.is_right_bower(trump));
	ASSERT_FALSE(ace_spades.is_left_bower(trump));
	ASSERT_FALSE(ace_spades.is_trump(trump));

	// Test for all jacks

	Card jack_spades(Card::RANK_JACK, Card::SUIT_SPADES);
	ASSERT_FALSE(jack_spades.is_right_bower(trump));
	ASSERT_FALSE(jack_spades.is_left_bower(trump));
	ASSERT_FALSE(jack_spades.is_trump(trump));

	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	ASSERT_TRUE(jack_hearts.is_right_bower(trump));
	ASSERT_FALSE(jack_hearts.is_left_bower(trump));
	ASSERT_TRUE(jack_hearts.is_trump(trump));

	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	ASSERT_FALSE(jack_clubs.is_right_bower(trump));
	ASSERT_FALSE(jack_clubs.is_left_bower(trump));
	ASSERT_FALSE(jack_clubs.is_trump(trump));
	
	Card jack_diamonds(Card::RANK_JACK, Card::SUIT_DIAMONDS);
	ASSERT_FALSE(jack_diamonds.is_right_bower(trump));
	ASSERT_TRUE(jack_diamonds.is_left_bower(trump));
	ASSERT_TRUE(jack_diamonds.is_trump(trump));

	// Tests for jacks for other possible trump suits

	trump = Card::SUIT_SPADES;

	ASSERT_TRUE(jack_spades.is_right_bower(trump));
	ASSERT_FALSE(jack_spades.is_left_bower(trump));
	ASSERT_TRUE(jack_spades.is_trump(trump));

	ASSERT_FALSE(jack_hearts.is_right_bower(trump));
	ASSERT_FALSE(jack_hearts.is_left_bower(trump));
	ASSERT_FALSE(jack_hearts.is_trump(trump));

	ASSERT_FALSE(jack_clubs.is_right_bower(trump));
	ASSERT_TRUE(jack_clubs.is_left_bower(trump));
	ASSERT_TRUE(jack_clubs.is_trump(trump));

	ASSERT_FALSE(jack_diamonds.is_right_bower(trump));
	ASSERT_FALSE(jack_diamonds.is_left_bower(trump));
	ASSERT_FALSE(jack_diamonds.is_trump(trump));

	trump = Card::SUIT_CLUBS;

	ASSERT_FALSE(jack_spades.is_right_bower(trump));
	ASSERT_TRUE(jack_spades.is_left_bower(trump));
	ASSERT_TRUE(jack_spades.is_trump(trump));

	ASSERT_FALSE(jack_hearts.is_right_bower(trump));
	ASSERT_FALSE(jack_hearts.is_left_bower(trump));
	ASSERT_FALSE(jack_hearts.is_trump(trump));

	ASSERT_TRUE(jack_clubs.is_right_bower(trump));
	ASSERT_FALSE(jack_clubs.is_left_bower(trump));
	ASSERT_TRUE(jack_clubs.is_trump(trump));

	ASSERT_FALSE(jack_diamonds.is_right_bower(trump));
	ASSERT_FALSE(jack_diamonds.is_left_bower(trump));
	ASSERT_FALSE(jack_diamonds.is_trump(trump));

	trump = Card::SUIT_DIAMONDS;

	ASSERT_FALSE(jack_spades.is_right_bower(trump));
	ASSERT_FALSE(jack_spades.is_left_bower(trump));
	ASSERT_FALSE(jack_spades.is_trump(trump));

	ASSERT_FALSE(jack_hearts.is_right_bower(trump));
	ASSERT_TRUE(jack_hearts.is_left_bower(trump));
	ASSERT_TRUE(jack_hearts.is_trump(trump));

	ASSERT_FALSE(jack_clubs.is_right_bower(trump));
	ASSERT_FALSE(jack_clubs.is_left_bower(trump));
	ASSERT_FALSE(jack_clubs.is_trump(trump));

	ASSERT_TRUE(jack_diamonds.is_right_bower(trump));
	ASSERT_FALSE(jack_diamonds.is_left_bower(trump));
	ASSERT_TRUE(jack_diamonds.is_trump(trump));
}

// Testing for <, >, ==, !=
TEST(test_card_operators) {
	Card two_spades;
	Card two_hearts(Card::RANK_TWO, Card::SUIT_HEARTS);
	Card two_clubs(Card::RANK_TWO, Card::SUIT_CLUBS);
	Card two_diamonds(Card::RANK_TWO, Card::SUIT_DIAMONDS);
	Card ace_spades(Card::RANK_ACE, Card::SUIT_SPADES);

	// Tests where the two ranks are the same

	ASSERT_FALSE(two_spades < two_spades);
	ASSERT_FALSE(two_spades > two_spades);
	ASSERT_TRUE(two_spades == two_spades);
	ASSERT_FALSE(two_spades != two_spades);

	ASSERT_TRUE(two_spades < ace_spades);
	ASSERT_FALSE(two_spades > ace_spades);
	ASSERT_FALSE(two_spades == ace_spades);
	ASSERT_TRUE(two_spades != ace_spades);

	ASSERT_TRUE(two_spades < two_hearts);
	ASSERT_FALSE(two_spades > two_hearts);
	ASSERT_FALSE(two_spades == two_hearts);
	ASSERT_TRUE(two_spades != two_hearts);

	ASSERT_TRUE(two_hearts < two_clubs);
	ASSERT_FALSE(two_hearts > two_clubs);
	ASSERT_FALSE(two_hearts == two_clubs);
	ASSERT_TRUE(two_hearts != two_clubs);

	ASSERT_TRUE(two_clubs < two_diamonds);
	ASSERT_FALSE(two_clubs > two_diamonds);
	ASSERT_FALSE(two_clubs == two_diamonds);
	ASSERT_TRUE(two_clubs != two_diamonds);

	// Tests for two different ranks

	ASSERT_FALSE(ace_spades < two_spades);
	ASSERT_TRUE(ace_spades > two_spades);
	ASSERT_FALSE(ace_spades == two_spades);
	ASSERT_TRUE(ace_spades != two_spades);

	ASSERT_FALSE(ace_spades < two_hearts);
	ASSERT_TRUE(ace_spades > two_hearts);
	ASSERT_FALSE(ace_spades == two_hearts);
	ASSERT_TRUE(ace_spades != two_hearts);

	ASSERT_FALSE(ace_spades < two_clubs);
	ASSERT_TRUE(ace_spades > two_clubs);
	ASSERT_FALSE(ace_spades == two_clubs);
	ASSERT_TRUE(ace_spades != two_clubs);

	ASSERT_FALSE(ace_spades < two_diamonds);
	ASSERT_TRUE(ace_spades > two_diamonds);
	ASSERT_FALSE(ace_spades == two_diamonds);
	ASSERT_TRUE(ace_spades != two_diamonds);
}

// Testing Suit_next
TEST(test_card_Suit_next) {
	// Tests for all possible suits

	string suit = Card::SUIT_SPADES;
	ASSERT_EQUAL(Suit_next(suit), Card::SUIT_CLUBS);
	
	suit = Card::SUIT_HEARTS;
	ASSERT_EQUAL(Suit_next(suit), Card::SUIT_DIAMONDS);
	
	suit = Card::SUIT_CLUBS;
	ASSERT_EQUAL(Suit_next(suit), Card::SUIT_SPADES);
	
	suit = Card::SUIT_DIAMONDS;
	ASSERT_EQUAL(Suit_next(suit), Card::SUIT_HEARTS);
}

// Testing <<
TEST(test_print) {
	// Tests for all possible ranks and suits

	Card two_spades;
	ostringstream oss2S;
	oss2S << two_spades;
	ASSERT_EQUAL(oss2S.str(), "Two of Spades");

	Card three_hearts(Card::RANK_THREE, Card::SUIT_HEARTS);
	ostringstream oss3H;
	oss3H << three_hearts;
	ASSERT_EQUAL(oss3H.str(), "Three of Hearts");

	Card four_clubs(Card::RANK_FOUR, Card::SUIT_CLUBS);
	ostringstream oss4C;
	oss4C << four_clubs;
	ASSERT_EQUAL(oss4C.str(), "Four of Clubs");

	Card five_diamonds(Card::RANK_FIVE, Card::SUIT_DIAMONDS);
	ostringstream oss5D;
	oss5D << five_diamonds;
	ASSERT_EQUAL(oss5D.str(), "Five of Diamonds");

	Card six_spades(Card::RANK_SIX, Card::SUIT_SPADES);
	ostringstream oss6S;
	oss6S << six_spades;
	ASSERT_EQUAL(oss6S.str(), "Six of Spades");

	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	ostringstream oss7H;
	oss7H << seven_hearts;
	ASSERT_EQUAL(oss7H.str(), "Seven of Hearts");

	Card eight_clubs(Card::RANK_EIGHT, Card::SUIT_CLUBS);
	ostringstream oss8C;
	oss8C << eight_clubs;
	ASSERT_EQUAL(oss8C.str(), "Eight of Clubs");

	Card nine_diamonds(Card::RANK_NINE, Card::SUIT_DIAMONDS);
	ostringstream oss9D;
	oss9D << nine_diamonds;
	ASSERT_EQUAL(oss9D.str(), "Nine of Diamonds");

	Card ten_spades(Card::RANK_TEN, Card::SUIT_SPADES);
	ostringstream oss10S;
	oss10S << ten_spades;
	ASSERT_EQUAL(oss10S.str(), "Ten of Spades");

	Card jack_hearts(Card::RANK_JACK, Card::SUIT_HEARTS);
	ostringstream ossJH;
	ossJH << jack_hearts;
	ASSERT_EQUAL(ossJH.str(), "Jack of Hearts");

	Card queen_clubs(Card::RANK_QUEEN, Card::SUIT_CLUBS);
	ostringstream ossQC;
	ossQC << queen_clubs;
	ASSERT_EQUAL(ossQC.str(), "Queen of Clubs");

	Card king_diamonds(Card::RANK_KING, Card::SUIT_DIAMONDS);
	ostringstream ossKD;
	ossKD << king_diamonds;
	ASSERT_EQUAL(ossKD.str(), "King of Diamonds");

	Card ace_spades(Card::RANK_ACE, Card::SUIT_SPADES);
	ostringstream ossAS;
	ossAS << ace_spades;
	ASSERT_EQUAL(ossAS.str(), "Ace of Spades");
}

// Testing Card_less(a, b, trump)
TEST(test_card_Card_less_trump) {
	string trump = Card::SUIT_CLUBS;
	Card two_clubs(Card::RANK_TWO, Card::SUIT_CLUBS);
	Card ace_diamonds(Card::RANK_ACE, Card::SUIT_DIAMONDS);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	Card jack_spades(Card::RANK_JACK, Card::SUIT_SPADES);
	Card ace_clubs(Card::RANK_ACE, Card::SUIT_CLUBS);
	Card four_hearts(Card::RANK_FOUR, Card::SUIT_HEARTS);

	// Testing two non-trump cards
	ASSERT_TRUE(Card_less(four_hearts, ace_diamonds, trump));
	ASSERT_FALSE(Card_less(ace_diamonds, four_hearts, trump));

	// Testing two identical cards

	// Non-trump
	ASSERT_FALSE(Card_less(four_hearts, four_hearts, trump));

	// Trump
	ASSERT_FALSE(Card_less(two_clubs, two_clubs, trump));

	// Test for two of different suits
	ASSERT_TRUE(Card_less(ace_diamonds, two_clubs, trump));
	ASSERT_FALSE(Card_less(two_clubs, ace_diamonds, trump));

	// Test for two trump cards
	ASSERT_TRUE(Card_less(two_clubs, ace_clubs, trump));
	ASSERT_FALSE(Card_less(ace_clubs, two_clubs, trump));

	// Tests for bowers

	ASSERT_TRUE(Card_less(ace_clubs, jack_clubs, trump));
	ASSERT_FALSE(Card_less(jack_clubs, ace_clubs, trump));

	ASSERT_TRUE(Card_less(ace_clubs, jack_spades, trump));
	ASSERT_FALSE(Card_less(jack_spades, ace_clubs, trump));

	ASSERT_TRUE(Card_less(jack_spades, jack_clubs, trump));
	ASSERT_FALSE(Card_less(jack_clubs, jack_spades, trump));

	ASSERT_TRUE(Card_less(ace_diamonds, jack_spades, trump));
	ASSERT_FALSE(Card_less(jack_spades, ace_diamonds, trump));
}

// Testing Card_less(a, b, led_card, trump)
TEST(test_card_Card_less_led_trump) {
	string trump = Card::SUIT_CLUBS;
	Card two_clubs(Card::RANK_TWO, Card::SUIT_CLUBS);
	Card ace_diamonds(Card::RANK_ACE, Card::SUIT_DIAMONDS);
	Card jack_clubs(Card::RANK_JACK, Card::SUIT_CLUBS);
	Card jack_spades(Card::RANK_JACK, Card::SUIT_SPADES);
	Card ace_clubs(Card::RANK_ACE, Card::SUIT_CLUBS);
	Card four_hearts(Card::RANK_FOUR, Card::SUIT_HEARTS);
	Card nine_spades(Card::RANK_NINE, Card::SUIT_SPADES);
	Card six_hearts(Card::RANK_SIX, Card::SUIT_HEARTS);
	Card three_clubs(Card::RANK_THREE, Card::SUIT_CLUBS);
	Card seven_hearts(Card::RANK_SEVEN, Card::SUIT_HEARTS);
	Card queen_hearts(Card::RANK_QUEEN, Card::SUIT_HEARTS);

	// Test for where none of the suits are the same

	ASSERT_TRUE(Card_less(four_hearts, ace_diamonds, nine_spades, trump));
	ASSERT_FALSE(Card_less(ace_diamonds, four_hearts, nine_spades, trump));

	// Test for two equal cards

	// Non-trump
	ASSERT_FALSE(Card_less(four_hearts, four_hearts, nine_spades, trump));

	// Trump
	ASSERT_FALSE(Card_less(two_clubs, two_clubs, four_hearts, trump));

	// Test for one trump card
	ASSERT_TRUE(Card_less(ace_diamonds, two_clubs, four_hearts, trump));
	ASSERT_FALSE(Card_less(two_clubs, ace_diamonds, four_hearts, trump));

	// Test for two trump cards
	ASSERT_TRUE(Card_less(two_clubs, ace_clubs, four_hearts, trump));
	ASSERT_FALSE(Card_less(ace_clubs, two_clubs, four_hearts, trump));

	// Tests for bowers

	ASSERT_TRUE(Card_less(ace_clubs, jack_clubs, four_hearts, trump));
	ASSERT_FALSE(Card_less(jack_clubs, ace_clubs, four_hearts, trump));

	ASSERT_TRUE(Card_less(ace_clubs, jack_spades, four_hearts, trump));
	ASSERT_FALSE(Card_less(jack_spades, ace_clubs, four_hearts, trump));

	ASSERT_TRUE(Card_less(jack_spades, jack_clubs, four_hearts, trump));
	ASSERT_FALSE(Card_less(jack_clubs, jack_spades, four_hearts, trump));

	ASSERT_TRUE(Card_less(ace_diamonds, jack_spades, four_hearts, trump));
	ASSERT_FALSE(Card_less(jack_spades, ace_diamonds, four_hearts, trump));

	// Tests for where trump suit and led suit are same

	// Two non-trump, non-led-suit
	ASSERT_TRUE(Card_less(four_hearts, ace_diamonds, two_clubs, trump));
	ASSERT_FALSE(Card_less(ace_diamonds, four_hearts, two_clubs, trump));

	// Tests for two equal cards

	// Non-trump
	ASSERT_FALSE(Card_less(four_hearts, four_hearts, two_clubs, trump));

	// Trump
	ASSERT_FALSE(Card_less(two_clubs, two_clubs, ace_clubs, trump));

	// Test for one trump card
	ASSERT_TRUE(Card_less(ace_diamonds, two_clubs, ace_clubs, trump));
	ASSERT_FALSE(Card_less(two_clubs, ace_diamonds, ace_clubs, trump));

	// Test for two trump cards
	ASSERT_TRUE(Card_less(two_clubs, ace_clubs, three_clubs, trump));
	ASSERT_FALSE(Card_less(ace_clubs, two_clubs, three_clubs, trump));

	// Tests for bowers

	ASSERT_TRUE(Card_less(ace_clubs, jack_clubs, three_clubs, trump));
	ASSERT_FALSE(Card_less(jack_clubs, ace_clubs, three_clubs, trump));

	ASSERT_TRUE(Card_less(ace_clubs, jack_spades, three_clubs, trump));
	ASSERT_FALSE(Card_less(jack_spades, ace_clubs, three_clubs, trump));

	ASSERT_TRUE(Card_less(jack_spades, jack_clubs, three_clubs, trump));
	ASSERT_FALSE(Card_less(jack_clubs, jack_spades, three_clubs, trump));

	ASSERT_TRUE(Card_less(ace_diamonds, jack_spades, three_clubs, trump));
	ASSERT_FALSE(Card_less(jack_spades, ace_diamonds, three_clubs, trump));

	// Tests for different trump and led suits

	// Two cards of led suit
	ASSERT_TRUE(Card_less(four_hearts, seven_hearts, six_hearts, trump));
	ASSERT_FALSE(Card_less(seven_hearts, four_hearts, six_hearts, trump));

	// One card of led suit
	ASSERT_TRUE(Card_less(ace_diamonds, seven_hearts, six_hearts, trump));
	ASSERT_FALSE(Card_less(seven_hearts, ace_diamonds, six_hearts, trump));

	// One trump, one led-suit
	ASSERT_TRUE(Card_less(seven_hearts, two_clubs, six_hearts, trump));
	ASSERT_FALSE(Card_less(two_clubs, seven_hearts, six_hearts, trump));

	// Left bower and led suit
	ASSERT_TRUE(Card_less(queen_hearts, jack_spades, six_hearts, trump));
	ASSERT_FALSE(Card_less(jack_spades, queen_hearts, six_hearts, trump));
}

TEST_MAIN()
