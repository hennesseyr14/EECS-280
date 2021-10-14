/* euchre.cpp
*
* Driver program to simulate a Euchre game
*
* by Ryan Hennessey
* rjhenn@umich.edu
* 2018-2-11
*/

#include "Card.h"
#include "Pack.h"
#include "Player.h"
#include <array>
#include <vector>
#include <cstdlib>
#include <fstream>
#include <iostream>

const int NUM_PLAYERS = 4;
const int NUM_TEAMS = 2; 
const int MIN_POINTS = 1;
const int MAX_POINTS = 100;

class Game {
public:
	//EFFECTS Initializes the pack, the shuffle / no shuffle option,
	//		  and the points required to win
	Game(Pack in_pack, std::string in_shuffle_on_off, int in_points_to_win)
		: pack(in_pack), shuffle_on_off(in_shuffle_on_off),
		points_to_win(in_points_to_win) {}
	
	//MODIFIES players
	//EFFECTS Creates a player and adds the player to the players vector
	void make_player(std::string name, std::string type) {
		Player * player = Player_factory(name, type);
		players.push_back(player);
	}

	//MODIFIES pack
	//EFFECTS Shuffles or resets the pack, depending on the option chosen
	void shuffle() {
		// Shuffle, if enabled
		if (shuffle_on_off == "shuffle") {
			pack.shuffle();
		}

		// Reset pack otherwise 
		else {
			pack.reset();
		}
	}
	
	//REQUIRES There are enough cards left in the pack
	//MODIFIES pack, players' hands, upcard
	//EFFECTS Deals the cards to the players according to the spec
	void deal() {
		// Number of times around the table
		for (int i = 0; i < 2; ++i) {

			// Position relative to the dealer
			for (int j = 1; j < 5; ++j) {

				// Number of cards to be dealt
				for (int k = 0; k < 2 + (i + j) % 2; ++k) {
					players[(dealer + j) % NUM_PLAYERS]
						->add_card(pack.deal_one());
				}
			}
		}

		// Set upcard
		upcard = pack.deal_one();
	}
	
	//MODIFIES order_up_suit, order_up_team, trump, dealer
	//EFFECTS Carries out the making trump portion of a euchre game
	void making_trump() {
		// Print hand, dealer, upcard
		std::cout << "Hand " << hand << std::endl;
		std::cout << *players[dealer] << " deals" << std::endl;
		std::cout << upcard << " turned up" << std::endl;

		bool order_up = false;
		int i = 1;
		int round = 1;
		bool is_dealer;
		
		while (!order_up) {
			// Increase round where necessary
			if (i == 5) {
				++round;
			}

			// Determine if player is dealer
			if ((dealer + i) % NUM_PLAYERS == 0) {
				is_dealer = true;
			}
			else {
				is_dealer = false;
			}

			// Give player opportunity to order up
			order_up = players[(dealer + i) % NUM_PLAYERS]
				->make_trump(upcard, is_dealer, round, order_up_suit);

			// Print message if player passed
			if (!order_up) {
				std::cout << *players[(dealer + i) % NUM_PLAYERS] 
					<< " passes" << std::endl;
			}
			
			// Move to next player
			++i;
		}

		// Print message for person who ordered up
		std::cout << *players[(dealer + i - 1) % NUM_PLAYERS] << " orders up "
			<< order_up_suit << std::endl << std::endl;

		// Give dealer opportunity to pick up the upcard if
		// someone ordered up in round 1
		if (round == 1) {
			players[dealer]->add_and_discard(upcard);
		}

		// Determine which team ordered up
		order_up_team = ((dealer + i - 1) % NUM_PLAYERS) % NUM_TEAMS;

		// Set the trump suit
		trump = order_up_suit;

		// Change the dealer
		dealer = (dealer + 1) % NUM_PLAYERS;
	}

	//REQUIRES Trump has been determined, players have enough cards
	//MODIFIES players' hands, team0trickwins, team1trickwins, hand_winner
	//		   num_tricks_won, hand
	//EFFECTS Carries out trick taking portion of a euchre game
	void trick_taking() {

		// Set the person to lead to be the person to the left of the dealer
		// Note that dealer was modified at the end of making trummp
		int leader = dealer;

		// Initialize the number of trick wins for both teams
		// at the start of the hand
		int team0_trick_wins = 0;
		int team1_trick_wins = 0;

		// Play the five tricks of the hand
		for (int i = 0; i < 5; ++i) {
			// Create vector to keep track of cards played in trick
			std::vector<Card> trick;

			// Leading card
			Card lead_card = players[leader]->lead_card(trump);
			std::cout << lead_card << " led by " 
				<< *players[leader] << std::endl;
			trick.push_back(lead_card);

			// Playing cards for remaining players
			for (int j = 1; j < NUM_PLAYERS; ++j) {
				Card card = players[(leader + j) % NUM_PLAYERS]
					->play_card(lead_card, trump);
				std::cout << card << " played by " 
					<< *players[(leader + j) % NUM_PLAYERS] << std::endl;
				trick.push_back(card);
			}

			// Determine who won the trick
			Card win_card = trick[0];
			int winner = 0;
			for (int j = 1; j < (int)trick.size(); ++j) {
				if (Card_less(win_card, trick[j], lead_card, trump)) {
					win_card = trick[j];
					winner = j;
				}
			}
			winner = (leader + winner) % NUM_PLAYERS;

			// Print out who won the trick
			std::cout << *players[winner] << " takes the trick"
				<< std::endl << std::endl;

			// Keep track of the number of tricks won by each team
			// in this hand
			if (winner % NUM_TEAMS == 0) {
				++team0_trick_wins;
			}
			else {
				++team1_trick_wins;
			}

			// The winner leads the next trick
			leader = winner;
		}

		// Print out who won the hand and keep track of how many
		// tricks they won
		if (team0_trick_wins > team1_trick_wins) {
			std::cout << *players[0] << " and " << *players[2] 
				<< " win the hand" << std::endl;
			hand_winner = 0;
			num_tricks_won = team0_trick_wins;
		}
		else {
			std::cout << *players[1] << " and " << *players[3]
				<< " win the hand" << std::endl;
			hand_winner = 1;
			num_tricks_won = team1_trick_wins;
		}

		// Update the hand number
		++hand;
	}

	//REQUIRES hand_winner, order_up_team, num_tricks_won have been determined
	//MODIFIES score
	//EFFECTS Carries out the scoring in a euchre game
	void scoring() {
		// Check if the winner of the hand also ordered up
		if (hand_winner == order_up_team) {

			// Check for a march
			if (num_tricks_won == 5) {
				std::cout << "march!" << std::endl;
				score[hand_winner] += 2;
			}

			else {
				score[hand_winner] += 1;
			}
		}

		// Case where winner of hand didn't order up
		else {
			std::cout << "euchred!" << std::endl;
			score[hand_winner] += 2;
		}
	}

	//MODIFIES players
	//EFFECTS deletes players
	void delete_players() {
		for (int i = 0; i < int(players.size()); ++i) {
			delete players[i];
		}
	}
	
	//EFFECTS Returns team 0's score
	int get_team0_score() {
		return score[0];
	}

	//EFFECTS Returns team 1's score
	int get_team1_score() {
		return score[1];
	}

	//EFFECTS Prints out the score
	void print_score() {
		std::cout << *players[0] << " and " << *players[2] 
			<< " have " << score[0] << " points" << std::endl;
		std::cout << *players[1] << " and " << *players[3]
			<< " have " << score[1] << " points" << std::endl;
		std::cout << std::endl;
	}

	//REQUIRES A winner has been determined
	//EFFECTS Prints out the winners
	void print_winner() {
		// Team 0 wins
		if (score[0] > score[1]) {
			std::cout << *players[0] << " and " << *players[2]
				<< " win!" << std::endl;
		}

		// Team 1 wins
		else {
			std::cout << *players[1] << " and " << *players[3]
				<< " win!" << std::endl;
		}
	}

private:
	Pack pack;
	std::string shuffle_on_off;
	int points_to_win;

	std::vector<Player *> players;
	std::array<int, 2> score = { };

	int hand = 0;
	int dealer = 0;

	std::string trump;
	Card upcard;
	std::string order_up_suit;
	int order_up_team;

	int hand_winner;
	int num_tricks_won;
};

//EFFECTS Prints error message for when command line arguments
//		  don't meet specifications
static void print_error_message();

//EFFECTS Checks whether commandline arguments meet specifications
static bool check_arguments(int argc, char **argv);

//EFFECTS Prints the command line arguments
static void print_arguments(char **argv);

int main(int argc, char **argv) {
	// Check commandline arguments
	bool check = check_arguments(argc, argv);
	if (!check) {
		return 1;
	}

	// Initialize information about the game
	std::string pack_filename = argv[1];
	std::string shuffle_on_off = argv[2];
	int num_points = atoi(argv[3]);
	
	// Open file to read in pack
	std::ifstream fin;
	fin.open(pack_filename.c_str());

	// Check that file was able to be opened
	if (!fin.is_open()) {
		std::cout << "Error opening " << pack_filename << std::endl;
		return 1;
	}

	// Iniitialize pack for the game
	Pack pack(fin);

	// Create instance of game class to simulate the euchre game
	Game game(pack, shuffle_on_off, num_points);

	// Create players for the game
	for (int i = 0; i < NUM_PLAYERS; ++i) {
		game.make_player(std::string(argv[2 * i + 4]),
			std::string(argv[2 * i + 5]));
	}

	// Print command line arguments
	print_arguments(argv);

	// Run game simulation until winner is determined
	while (game.get_team0_score() < num_points
		&& game.get_team1_score() < num_points) {
		game.shuffle();
		game.deal();
		game.making_trump();
		game.trick_taking();
		game.scoring();
		game.print_score();
	}

	// Print the winner
	game.print_winner();

	// Delete the players
	game.delete_players();

	return 0;
}

static void print_error_message() {
	std::cout << "Usage: euchre.exe PACK_FILENAME [shuffle|noshuffle] "
		<< "POINTS_TO_WIN NAME1 TYPE1 NAME2 TYPE2 NAME3 TYPE3 "
		<< "NAME4 TYPE4" << std::endl;
}

static bool check_arguments(int argc, char **argv) {
	if (argc != 12) {
		print_error_message();
		return false;
	}
	if (atoi(argv[3]) < 1 || atoi(argv[3]) > 100) {
		print_error_message();
		return false;
	}
	if (std::string(argv[2]) != "shuffle" 
		&& std::string(argv[2]) != "noshuffle") {
		print_error_message();
		return false;
	}
	for (int i = 5; i <= 11; i += 2) {
		if (std::string(argv[i]) != "Simple" 
			&& std::string(argv[i]) != "Human") {
			print_error_message();
			return false;
		}
	}
	return true;
}

static void print_arguments(char **argv) {
	for (int i = 0; i < 12; ++i) {
		std::cout << argv[i] << " ";
	}
	std::cout << std::endl;
}