# NumberGuessingGame

This code defines a view controller named "GuessSecren" that implements a number guessing game in an iOS application. The code generates a random number, checks the user's guesses, and displays the remaining chances. As the guesses are incorrect, the remaining chances decrease and when the chances are exhausted, the user is directed to another page that displays the result. The code has a text field and a guess button for the user to enter their guesses, and uses a label to display the result. Additionally, a segue with an alert is implemented to transition to the result page.


This code defines another view controller named "ResultSecreen" and displays the result using a value passed from a dialog box used in the "GuessSecren" view controller. The code displays the result using an image view and a label. If the result is "true," it shows a message that the user has won and a happy image. Otherwise, it shows a message that the user has lost and the main image. The "viewDidLoad" method is executed when the "ResultSecreen" view is loaded and hides the back button, sets the page title to "Result Page," and displays the result.
