# Dice Flutter app

A new Flutter project.

## DiceScreen Widget
This is a Flutter Dart code that implements a dice rolling game.

The game consists of a screen that displays a list of dice. The user can add or remove dice to the list. Each dice is represented by the DiceWidget class, which has a state that contains the current dice value. When the user taps a dice, the dice value is randomized and the new value is displayed using the appropriate dice image.

The code uses Flutter widgets to create the user interface. The main screen is a Scaffold widget that contains a floating action button row at the bottom and a list of dice widgets in the center. The list of dice widgets is created using a ListView.builder widget that builds each dice widget in the _diceList list. The dice widgets are added and removed from the _diceList using the _addDice and _deleteDice methods, respectively.

The DiceWidget class is a stateful widget that contains a state that stores the current dice value. The dice value is randomized when the user taps the dice using the _rollDice method. The dice widget is implemented using a GestureDetector widget that detects when the user taps the widget. The dice image is displayed using an Image widget that loads the appropriate image asset based on the current dice value.

Overall, this code is a simple implementation of a dice rolling game that demonstrates the use of Flutter widgets and state management.


## BottomNavigationBar Widget
This is a Flutter code for a dice rolling game with two dice. The user taps on the dice image to roll the dice. If a six is rolled, the user wins and a "Winner" message appears with a happy face icon. Otherwise, the game continues until a six is rolled.

The code has a bottom navigation bar with three pages. The first and second pages show one dice each, while the third page shows two dice for the user to play with. The code uses two Stateful Widgets, Dice and Dice2, for the two dice.

In the NavigationBarWidget class, the PageView widget is used to show the three pages with the dice. The BottomNavigationBar widget is used to display the bottom navigation bar with three tabs.

The <b>Dice</b> and <b>Dice2</b> classes are almost identical, with the difference being that Dice2 has two dice. Both classes use a Random object to generate random numbers between 1 and 6 when the dice are rolled. The update() and update2() methods are called when the user taps on the dice image to update the state and re-render the dice.

