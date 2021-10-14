#include "Pack.h"
#include "Card.h"
#include "unit_test_framework.h"
#include <cassert>
#include <iostream>
#include <fstream>

using namespace std;

static const int PACK_SIZE = 24;

// Testing pack default constructor
TEST(test_pack_default_ctor) {
    Pack pack;

	// Check first card
    Card first = pack.deal_one();
    ASSERT_EQUAL(Card::RANK_NINE, first.get_rank());
    ASSERT_EQUAL(Card::SUIT_SPADES, first.get_suit());

	// Check second card
	Card card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_TEN, Card::SUIT_SPADES));

	// Check a few cards in the middle of the pack

	for (int i = 0; i < 4; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_SPADES));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_HEARTS));

	for (int i = 0; i < 5; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_HEARTS));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_CLUBS));

	for (int i = 0; i < 2; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_JACK, Card::SUIT_CLUBS));

	for (int i = 0; i < 3; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_CLUBS));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_DIAMONDS));

	for (int i = 0; i < 3; ++i) {
		card = pack.deal_one();
	}

	// Check the last couple cards in the pack
	ASSERT_EQUAL(card, Card(Card::RANK_QUEEN, Card::SUIT_DIAMONDS));
	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_KING, Card::SUIT_DIAMONDS));
	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_DIAMONDS));
}

// Testing non-default constructor
TEST(test_pack_istream_ctor) {
	const string filename = "pack.in";
	ifstream ifs(filename);
	assert(ifs.is_open());
	Pack pack(ifs);

	// Check first card
	Card first_card = pack.deal_one();
	ASSERT_EQUAL(first_card, Card(Card::RANK_NINE, Card::SUIT_SPADES));

	// Check second card
	Card card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_TEN, Card::SUIT_SPADES));

	// Check a few cards in the middle of the pack

	for (int i = 0; i < 4; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_SPADES));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_HEARTS));

	for (int i = 0; i < 5; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_HEARTS));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_CLUBS));

	for (int i = 0; i < 2; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_JACK, Card::SUIT_CLUBS));

	for (int i = 0; i < 3; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_CLUBS));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_DIAMONDS));

	for (int i = 0; i < 3; ++i) {
		card = pack.deal_one();
	}

	// Check the last couple cards in the pack
	ASSERT_EQUAL(card, Card(Card::RANK_QUEEN, Card::SUIT_DIAMONDS));
	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_KING, Card::SUIT_DIAMONDS));
	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_DIAMONDS));
}

// Testing for reset
TEST(test_pack_reset) {
	Pack pack;

	// Test after dealing one card
	pack.deal_one();
	pack.reset();
	Card first_card = pack.deal_one();
	ASSERT_EQUAL(first_card, Card(Card::RANK_NINE, Card::SUIT_SPADES));

	// Tests after dealing multiple cards

	for (int i = 0; i < 2; ++i) {
		pack.deal_one();
	}
	pack.reset();
	first_card = pack.deal_one();
	ASSERT_EQUAL(first_card, Card(Card::RANK_NINE, Card::SUIT_SPADES));

	for (int i = 0; i < 7; ++i) {
		pack.deal_one();
	}
	pack.reset();
	first_card = pack.deal_one();
	ASSERT_EQUAL(first_card, Card(Card::RANK_NINE, Card::SUIT_SPADES));

	for (int i = 0; i < PACK_SIZE - 1; ++i) {
		pack.deal_one();
	}
	pack.reset();
	first_card = pack.deal_one();
	ASSERT_EQUAL(first_card, Card(Card::RANK_NINE, Card::SUIT_SPADES));
}

TEST(test_pack_empty) {
	Pack pack;

	// Tests for all cards before final card
	for (int i = 0; i < PACK_SIZE - 1; ++i) {
		pack.deal_one();
		ASSERT_FALSE(pack.empty());
	}

	// Test after final card has been dealt
	pack.deal_one();
	ASSERT_TRUE(pack.empty());
}

TEST(test_pack_shuffle) {
	Pack pack;
	pack.shuffle();

	// Check first card
	Card first_card = pack.deal_one();
	ASSERT_EQUAL(first_card, Card(Card::RANK_KING, Card::SUIT_CLUBS));

	// Check second card
	Card card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_JACK, Card::SUIT_HEARTS));

	// Check a few cards in the middle of the pack

	for (int i = 0; i < 2; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_CLUBS));

	for (int i = 0; i < 3; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_NINE, Card::SUIT_DIAMONDS));

	for (int i = 0; i < 4; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_HEARTS));

	for (int i = 0; i < 5; ++i) {
		card = pack.deal_one();
	}
	ASSERT_EQUAL(card, Card(Card::RANK_QUEEN, Card::SUIT_DIAMONDS));


	for (int i = 0; i < 6; ++i) {
		card = pack.deal_one();
	}

	// Check the last couple cards in the pack

	ASSERT_EQUAL(card, Card(Card::RANK_ACE, Card::SUIT_DIAMONDS));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_QUEEN, Card::SUIT_CLUBS));

	card = pack.deal_one();
	ASSERT_EQUAL(card, Card(Card::RANK_TEN, Card::SUIT_HEARTS));
}


TEST_MAIN()
