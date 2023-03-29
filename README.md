
## Final output
<table>
  <tr>
    <td><img src="https://github.com/TariqMehmood1004/Dice-App-Flutter/blob/main/output/1.jpg" alt="Dashboard image"/></td>
    <td><img src="https://github.com/TariqMehmood1004/Dice-App-Flutter/blob/main/output/2.jpg" alt="Dashboard image"/></td>
    <td><img src="https://github.com/TariqMehmood1004/Dice-App-Flutter/blob/main/output/3.jpg" alt="Dashboard image"/></td>
  </tr>
  <tr>    
    <td><img src="https://github.com/TariqMehmood1004/Dice-App-Flutter/blob/main/output/4.jpg" alt="Dashboard image"/></td>
    <td><img src="https://github.com/TariqMehmood1004/Dice-App-Flutter/blob/main/output/5.jpg" alt="Dashboard image"/></td>
    <td><img src="https://github.com/TariqMehmood1004/Dice-App-Flutter/blob/main/output/6.jpg" alt="Dashboard image"/></td>
  </tr>
</table>

# Documentaion and Functional Requirements



## NOTIO Software Solutions - Dice Flutter app
Dice have been used for centuries as a tool for games and gambling. However, with the rise of technology, the traditional physical dice have been replaced by digital ones. A dice app is a software application that simulates the rolling of dice on a digital device such as a smartphone or tablet. With a dice app, users can roll dice quickly and easily without the need for physical dice. These apps can be used for a wide range of activities such as board games, role-playing games, and educational activities. Additionally, many dice apps come with features such as different dice types, customizable dice, and the ability to roll multiple dice at once. In this digital age, a dice app is a convenient and practical alternative to traditional dice.



## Dice screen Widget
This is a Flutter Dart code that implements a dice rolling game.

The game consists of a screen that displays a list of dice. The user can add or remove dice to the list. Each dice is represented by the DiceWidget class, which has a state that contains the current dice value. When the user taps a dice, the dice value is randomized and the new value is displayed using the appropriate dice image.

The code uses Flutter widgets to create the user interface. The main screen is a Scaffold widget that contains a floating action button row at the bottom and a list of dice widgets in the center. The list of dice widgets is created using a ListView.builder widget that builds each dice widget in the _diceList list. The dice widgets are added and removed from the _diceList using the _addDice and _deleteDice methods, respectively.

The DiceWidget class is a stateful widget that contains a state that stores the current dice value. The dice value is randomized when the user taps the dice using the _rollDice method. The dice widget is implemented using a GestureDetector widget that detects when the user taps the widget. The dice image is displayed using an Image widget that loads the appropriate image asset based on the current dice value.

Overall, this code is a simple implementation of a dice rolling game that demonstrates the use of Flutter widgets and state management.


## Bottom Navigation Bar Widget
This is a Flutter code for a dice rolling game with two dice. The user taps on the dice image to roll the dice. If a six is rolled, the user wins and a "Winner" message appears with a happy face icon. Otherwise, the game continues until a six is rolled.

The code has a bottom navigation bar with three pages. The first and second pages show one dice each, while the third page shows two dice for the user to play with. The code uses two Stateful Widgets, Dice and Dice2, for the two dice.

In the NavigationBarWidget class, the PageView widget is used to show the three pages with the dice. The BottomNavigationBar widget is used to display the bottom navigation bar with three tabs.

The <b>Dice</b> and <b>Dice2</b> classes are almost identical, with the difference being that Dice2 has two dice. Both classes use a Random object to generate random numbers between 1 and 6 when the dice are rolled. The update() and update2() methods are called when the user taps on the dice image to update the state and re-render the dice.

## Dashboard Screen contoller
<b>_DashboardControllerState.</b> It has a Random instance, an integer variable diceNo, and a String variable winner. The state also has an AnimationController instance named _controller, which will be disposed of in the dispose() method.

The update() method updates the diceNo variable with a random integer between 1 and 6. The build() method returns a Scaffold widget with a Dice widget as the body and a NavigationBarWidget at the bottom.

The diceContainer() method returns a Center widget with a Column child containing a single Container. This Container has a width and height of 250 and a decoration with a yellowish color and rounded corners. The GestureDetector widget has an onTap property that triggers the update() method and sets the winner variable to an empty string if the diceNo is not equal to 6, otherwise, it sets winner to "Winner". The Image widget displays an asset image of a dice with the number represented by the diceNo variable.

## Splash screen controller
This is a Flutter code for a SplashScreenController that shows a splash screen for 3 seconds and then navigates to the DashboardController.

The initState method is called when the widget is inserted into the widget tree. In this method, the SystemUiOverlayStyle is set to change the color of the status bar to white. After a delay of 3 seconds, the Navigator.pushReplacement method is used to navigate to the DashboardController widget, replacing the current widget.

The build method returns a Scaffold widget with a white background and a Centered child. The child is a Container widget with a transparent background and a Column child with two Container widgets. The first Container has a CircleAvatar child displaying the app store image. The second Container has a CircularProgressIndicator with a text showing the name of the company, Notio Software Solutions.

Overall, this code creates a simple splash screen with a loading indicator that lasts for 3 seconds before navigating to the main dashboard screen.






