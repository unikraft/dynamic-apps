// Libraries
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <string>
#include <iomanip>

using namespace std;

// Global Constants
const string SUIT[] = { "spades", "hearts", "diamonds", "clubs" };
const int SUIT_ARRAY_SIZE = 4;
const int RANKS_IN_STANDARD_DECK = 13;
const int CARDS_IN_STANDARD_DECK = 52;
const int TARGET_VALUE = 21;
const int MAX_HAND_SIZE = 12;

// Structures

//Used to store information about a card
struct Card {
    string suit;
    string description;
    int rank;
    int value;

    Card() {
        suit = "";
        description = "";
        rank = 0;
        value = 0;
    }
};

//A stack of cards (a deck)
struct CardArray {
    Card *Cards;
    int totalCards;
    int usedCards;
    
    CardArray() {
        Cards = nullptr;
        totalCards = 0;
        usedCards = 0;
    }
};

// Prototypes
void getNewDeck(CardArray & deck);
int getCardValue(int rank);
string getCardDescription(int rank, int suitIndex);
void printDeck(const CardArray & deck);
void shuffleDeck(CardArray & deck);
int blackjack(CardArray & deck);
Card drawCard(CardArray & deck);
void SwapCardIndexes(CardArray & deck, int card1Index, int card2Index);
void deal(CardArray & deck, CardArray & hand);
void printDashes();
char getCharInput();
void printHand(const CardArray & h, string name);
void dealToPlayer(CardArray & deck, CardArray & player, const CardArray & dealer, string name);
void dealToDealer(CardArray & deck, CardArray & dealer, string name);
string getHandCardDescriptions(const CardArray & h);
int getHandValue(const CardArray & hand);
void printWinner(const CardArray & player, const CardArray & dealer);
int determineWinner(const CardArray & player, const CardArray & dealer);
void playGames(CardArray & deck);
void newShuffledDeck(CardArray & deck);
void promptPlayerForGame(int & gamesPlayed);
void printAdvice(const CardArray & player,const CardArray & dealer);
int getUpcardValue(const CardArray & dealer);

// functions
int main() {
    srand(time(0));

    CardArray deck;
    
    getNewDeck(deck);
    cout << "Unshuffled Deck: " << endl;
    printDeck(deck);

    shuffleDeck(deck);
    cout << endl << "Shuffled Deck: " << endl;
    printDeck(deck);
    cout << endl;

    playGames(deck);

    delete[] deck.Cards;

    return 0;
}

// Shuffles the indexes of every Card in any given CardArray
void shuffleDeck(CardArray & deck) {
    //loops through every element in array and swaps its index with something random
    for(int index = 0; index < deck.totalCards; index ++) {
        int randomCardIndex = rand() % deck.totalCards;
        SwapCardIndexes(deck,index,randomCardIndex);
    }
}

// Reshuffles deck and sets draw index to zero
void newShuffledDeck(CardArray & deck) {
    deck.usedCards = 0;
    shuffleDeck(deck);
}

// Gets the Value of any give card (note: Aces will be given the value of 1)
int getCardValue(int card) {
    int value;
    const int LAST_NUMBERED_CARD = 10;

    //caps face cards to 10
    if (card >=  LAST_NUMBERED_CARD) {
        value = LAST_NUMBERED_CARD;
    } else {
        value = card;
    }

    return value;
}

// Returns card description given rank and suitIndex
string getCardDescription(int rank, int suitIndex) {
    char suitInitial = toupper(SUIT[suitIndex][0]);
    string rankInitial;
    
    switch (rank)
    {
    case 1:
        rankInitial = "A";
        break;
    case 11:
        rankInitial = "J";
        break;
    case 12:
        rankInitial = "Q";
        break;
    case 13:
        rankInitial = "K";
        break;
    default:
        rankInitial = to_string(rank);
        break;
    }

    return rankInitial + suitInitial;
}

// Populates given 'CardArray' with a full set of standard cards
void getNewDeck(CardArray & deck) {
    deck.totalCards = CARDS_IN_STANDARD_DECK;
    deck.Cards = new Card[deck.totalCards];

    for(int suitIndex = 0; suitIndex < SUIT_ARRAY_SIZE; suitIndex++) {
        for(int rank = 1; rank <= RANKS_IN_STANDARD_DECK; rank ++) {
            int index = suitIndex * RANKS_IN_STANDARD_DECK + (rank - 1);
            
            deck.Cards[index].suit = SUIT[suitIndex];
            deck.Cards[index].rank = rank;
            deck.Cards[index].description = getCardDescription(rank,suitIndex);
            deck.Cards[index].value = getCardValue(rank);
        }
    }
}

//prints descriptions of every card in a given CardArray inside a 13 x 4 grid
void printDeck(const CardArray & deck) {
    for(int suitIndex = 0; suitIndex < SUIT_ARRAY_SIZE; suitIndex++) {
        for(int rankIndex = 0; rankIndex < RANKS_IN_STANDARD_DECK; rankIndex ++) {
            int index = suitIndex * RANKS_IN_STANDARD_DECK + rankIndex;
            cout << setw(4) << deck.Cards[index].description;
        }
        cout << endl;
    }
}

// Swaps the elements of two given indexes in given 'CardArray'
void SwapCardIndexes(CardArray & deck, int card1Index, int card2Index) {
    Card temp = deck.Cards[card1Index];
    deck.Cards[card1Index] = deck.Cards[card2Index];
    deck.Cards[card2Index] = temp;
}

// Gives 'Hand' card from top of deck
void deal(CardArray & deck, CardArray & hand) {
    Card card = drawCard(deck);
    hand.Cards[hand.totalCards++] = card;
}

// gets highest unused Card in given 'CardArray' and returns it
Card drawCard(CardArray & deck) {
    if(deck.usedCards + 1 > deck.totalCards) {
        newShuffledDeck(deck);
    }

    return deck.Cards[deck.totalCards - ++deck.usedCards];
}

// Prints Dashes
void printDashes() {
    cout << "---------" << endl;
}

// Gets input and returns lowercase version of first character
char getCharInput() {
    const int SINGLE_CHARACTER = 1;
    string input;
    cin >> input;

    if(input.size() == SINGLE_CHARACTER) {
        return tolower(input[0]);
    } else {
        return '\0';
    }
    
}

// Prints out player name and description of every card given 'Hand'
void printHand(const CardArray & h, string name) {
    cout << name << ": " << getHandCardDescriptions(h) << endl;
}

//returns the value of first card in CardArray 'dealer'
int getUpcardValue(const CardArray & dealer) {
    int value = dealer.Cards[0].value;
    
    //if card is ace, make the value 11
    if(dealer.Cards[0].rank == 1) {
        value += 10;
    }

    return value;
}

// Prints suggestion on whether to HIT or STAND given player's hand
void printAdvice(const CardArray & player, const CardArray & dealer) { 
    //target value depending on upcard
    const int GOOD_TOLERANCE = 17;
    const int POOR_TOLERANCE = 12;
    const int FAIR_TOLERANCE = 13;
    const int GOOD_UPCARD_START = 7;
    const int POOR_UPCARD_START = 4;

    int upcardValue = getUpcardValue(dealer);
    int playerHandValue = getHandValue(player);
    
    //if upcard is a good card
    if (upcardValue >= GOOD_UPCARD_START) {
        if (playerHandValue >= GOOD_TOLERANCE) {
            cout << "Suggestion: stand" << endl;

        } else {
            cout << "Suggestion: hit" << endl;

        }

        cout << "Reason: The dealer's upcard is a good one. You should stop drawing when a total value of " << GOOD_TOLERANCE << " or more is reached." << endl;
    }
    //if upcard is a poor card
    else if (upcardValue >= POOR_UPCARD_START) {
        if (playerHandValue >= POOR_TOLERANCE) {
            cout << "Suggestion: stand" << endl;

        } else {
            cout << "Suggestion: hit" << endl;

        }

        cout << "Reason: The dealer's upcard is a poor one. You should stop drawing when a total value of " << POOR_TOLERANCE << " or more is reached." << endl;
    } 
    //if upcard is a fair card
    else {
        if (playerHandValue >= FAIR_TOLERANCE) {
            cout << "Suggestion: stand" << endl;

        } else {
            cout << "Suggestion: hit" << endl;

        }
        cout << "Reason: The dealer's upcard is a fair one. You should stop drawing when a total value of " << FAIR_TOLERANCE << " or more is reached." << endl;
    }

    cout << endl;
}

// Asks player for input and hits or stands player's CardArray accordingly
void dealToPlayer(CardArray & deck, CardArray & player, const CardArray & dealer, string name) {
    cout << "Dealing to player" << endl;
    printDashes();

    bool stand = false;
    bool alreadyPrompted = false;
    // as long as player's cards < target value and he wants to hit, give him a card
    if(getHandValue(player) < TARGET_VALUE) {
        while (!stand) {
            if(alreadyPrompted) {
                cout << "Invalid input. ";
            }

            cout << "Enter h to hit or s to stand:" << endl;
            printAdvice(player,dealer);
            
            char input = getCharInput();

            if (input == 's') {
                stand = true;

            } else if(input == 'h') {
                deal(deck, player);
                printHand(player, name);
                alreadyPrompted = false;

                //forces stand if past target value
                if(getHandValue(player) >= TARGET_VALUE) {
                    stand = true;
                }
            } else {
                alreadyPrompted = true;
            }
        }
    }

    cout << endl;
}

// Hits dealer's CardArray until CardArray value is greater or equal to 'MAX_TOLERANCE'
void dealToDealer(CardArray & deck, CardArray & dealer, string name) {
    const int MAX_TOLERANCE = 17;
    
    cout << "Dealing to dealer" << endl;
    printDashes();

    printHand(dealer, name);

    //keeps taking cards if CardArray value < tolerance
    while (getHandValue(dealer) < MAX_TOLERANCE) {
        deal(deck, dealer);
        printHand(dealer, name);
    }
    cout << endl;

}

// returns the card value of any given 'Hand'. Makes the value of Aces eleven if it makes sense
int getHandValue(const CardArray & hand) {
    const int ACE_RANK = 1;
    const int ACE_SECOND_VALUE_DIFFERENCE = 10;
    int value = 0; 

    for(int i = 0; i < hand.totalCards; i++) {
        value += hand.Cards[i].value;
    }
    
    // Determines if Aces should change to +11
    for(int i = 0; i < hand.totalCards; i++) {
        if(hand.Cards[i].rank == ACE_RANK) {
            if(value + ACE_SECOND_VALUE_DIFFERENCE <= TARGET_VALUE) {
                value += ACE_SECOND_VALUE_DIFFERENCE;
            }
        }
    }

    return value; 
}

// returns a string of the descriptions all the cards in Hand
string getHandCardDescriptions(const CardArray & hand) {
    string result;

    //loops though every card in CardArray and adds decription to a string
    for(int i = 0; i < hand.totalCards; i++) {
        result += hand.Cards[i].description + " ";
    }

    return result;
}

// prints message that explains winner
void printWinner(const CardArray & player, const CardArray & dealer) {
    int playerScore = getHandValue(player);
    int dealerScore = getHandValue(dealer);

    cout << "Player Score: " << playerScore << ", " << "Dealer score: " << dealerScore << endl;

    //determines winner and prints result
    if(playerScore > TARGET_VALUE) {
        cout << "Bust! You lose." << endl;

    } else if(playerScore > dealerScore) {
        if(playerScore == TARGET_VALUE) {
             cout << "Blackjack! You win!" << endl;
        
        } else {
            cout << "You have a higher score, you win." << endl;
        
        }
       
    } else if (playerScore == dealerScore) {
        cout << "Game is tied." << endl;

    } else {
        if(dealerScore > TARGET_VALUE) {
            cout << "Dealer is Bust, you win." << endl;
            
        } else if(dealerScore == TARGET_VALUE) {
            cout << "Dealer scored a blackjack! you lose." << endl;
        
        } else {
            cout << "Dealer has a higher score, you lose." << endl;
        
        }
    }
}

// determins winner based on player and dealer score. returns -1 if dealer wins, 0 if tie, 1 if player wins
int determineWinner(const CardArray & player, const CardArray & dealer) {
    int result;

    //calculates winner
    if (getHandValue(player) == getHandValue(dealer)) {
        result = 0;

    } else if (getHandValue(player) > TARGET_VALUE && getHandValue(dealer) > TARGET_VALUE) {
        result = 0;

    } else if(getHandValue(player) > TARGET_VALUE) {
        result = -1;

    } else if(getHandValue(dealer) > TARGET_VALUE) {
        result = 1;

    } else if(getHandValue(player) > getHandValue(dealer)) {
        result = 1;

    } else {
        result = -1;
    }

    return result;
}

// runs a single game of blackjack. returns the result of 'determinewinnder()'
int blackjack(CardArray & deck) {
    CardArray player, dealer;
    
    player.Cards = new Card[MAX_HAND_SIZE];
    dealer.Cards = new Card[MAX_HAND_SIZE];

    string playerName = "+Player+";
    string dealerName = "*Dealer*";

    // Deal Initial Cards
    cout << "Deal first card" << endl;
    printDashes();
    
    deal(deck, player);
    deal(deck, dealer);

    printHand(player, playerName);
    printHand(dealer,dealerName);
    cout << endl;

    cout << "Deal second card" << endl;
    printDashes();

    deal(deck, player);
    deal(deck, dealer);

    printHand(player, playerName);
    cout << playerName << ": " << dealer.Cards[0].description << " ??" << endl << endl;
    
    // if no one has a natural ace
    if(getHandValue(player) != TARGET_VALUE && getHandValue(dealer) != TARGET_VALUE) {
        //deal to player
        dealToPlayer(deck,player,dealer,playerName);


        //if player isn't bust, deal to dealer
        if(getHandValue(player) <= TARGET_VALUE) {
            dealToDealer(deck, dealer, dealerName);
        } else {
            printHand(dealer,dealerName);

        }
    }
    

    printWinner(player,dealer);

    cout << endl;

    int result = determineWinner(player,dealer);

    //deletes dynamic arrays associated with player and dealer hands
    delete[] player.Cards;
    delete[] dealer.Cards;

    return result;
}

// prints a prompt that asks if the player would like to play a game of Blackjack
void promptPlayerForGame(int & gamesPlayed) {
    if(gamesPlayed == 0) {
        cout << "Do you want to play a game of blackjack (y / n)? ";
    } else {
        cout << "Do you want to play another game of blackjack (y / n)? ";
    }
}

// runs games of blackjack until user quits, and then prints result of matches
void playGames(CardArray & deck) {
    const int resultsMessageWidth = 8;
    int wins = 0, losses = 0, draws = 0; 
    char input;
    int gamesPlayed = 0;

    cout << "BLACKJACK" << endl << "---------" << endl;

    //while player doesn't state to quit
    while (input != 'n') {
        input = ' ';
        promptPlayerForGame(gamesPlayed);
        input = getCharInput();

        while (input != 'y' && input != 'n') {
            cout << "Invalid input. ";
            promptPlayerForGame(gamesPlayed);
            input = getCharInput();

        }

        //if player agrees, play a game of blackjack
        if(input == 'y') {
            int result = blackjack(deck);
            
            gamesPlayed ++;

            if(result == 1) {
                wins += 1;
            } else if (result == -1) {
                losses += 1;
            } else {
                draws += 1;
            }

        } else {
            //end message
            cout << endl;
            cout << "Thanks for playing, you played " << gamesPlayed << " games and your record was:" << endl;
            cout << setw(resultsMessageWidth) << "wins: " << wins << endl;
            cout << setw(resultsMessageWidth) << "losses: " << losses << endl;
            cout << setw(resultsMessageWidth) << "draws: " << draws << endl;
        }
    }
}