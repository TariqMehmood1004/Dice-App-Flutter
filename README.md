
<h1>Output</h1>
<table>
    <tr>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/1.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/2.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/3.jpg" alt="Output results"></td>
    </tr>
</table>

<table>
    <tr>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/2.1.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/3.1.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/4.jpg" alt="Output results"></td>
    </tr>
</table>

<table>
    <tr>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/4.1.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/5.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/5.1.jpg" alt="Output results"></td>
    </tr>
</table>

<table>
    <tr>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/6.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/5.1.jpg" alt="Output results"></td>
        <td><img src= "https://github.com/TariqMehmood1004/resumeApp/blob/main/output/7.1.jpg" alt="Output results"></td>
    </tr>
</table>


# Introduction to Resume App
A great way to get a professional looking resume is with the help of Resume App. With this app you can create a professional looking CV for free. Once you have created it you will be able to save it as PDF file. You can also share the CV with other apps.

## Objective of Resume App
A resume objective is an eye-catching statement of your career intent that's placed on top of your resume. The resume objective provides a 2-3 sentence snapshot of your professional experience, skills, and achievements, and explains why they make you the right candidate for the job.

</hr>

# CONTENT SCREEN CONTROLLER
## Contents screen controller widget
The code appears to be written in the Dart programming language and uses the Flutter framework. It defines a stateless widget that returns a Scaffold widget, which is the basic material design visual layout structure. The Scaffold widget consists of multiple child widgets like the SingleChildScrollView, Column, and multiple instances of the CardWidget.

From a functional perspective, the code seems to be creating a UI for a resume application. The UI contains the following elements:

- A container widget with the "Resume" text.
- A row with two CardWidgets for displaying the Objective and Experience sections.
- A row with one CardWidget for displaying the Skills section.
- A row with one CardWidget for displaying the Achievements section.
- A row with two CardWidgets for displaying the Expertise and Qualification sections.
- A row with two CardWidgets for displaying the Hobbies and References sections.
- Each CardWidget contains an image, a title, and an on-tap function that opens a dialog box with the corresponding section's details.

In summary, the functional requirements of this code are to create a UI for a resume application that displays the user's objective, experience, skills, achievements, expertise, qualifications, hobbies, and references. The UI should be visually appealing, and each section should have a corresponding CardWidget that opens a dialog box with the section's details when tapped.

## profileWithIconAndTitle Widget
This is a function in Dart programming language that returns a Container widget with an icon and a title. The function takes two parameters: a String title and an IconData icon. The Container widget has padding and margin, and a BoxDecoration that gives it a dark blue color with a 2% opacity and a rounded border of 5 pixels. The children of the Container widget are a Row widget with mainAxisAlignment set to MainAxisAlignment.spaceBetween, which places the children as far apart from each other as possible. The children of the Row widget are an Icon widget with the passed in IconData, and a SizedBox widget with a width of 10 pixels to provide spacing between the Icon and Text widgets. The last child of the Row widget is a Text widget with the passed in title String, and a TextStyle with an off-white color and a font size of 12 pixels. Overall, this function creates a reusable widget that can be used to display a title and an icon in a consistent style across an app.

## chipForRow Widget
This function creates a widget that displays a skill label in the form of a chip. The chip has a background color and a text label with a specified font size and color. The function takes two parameters, the skill label and the background color of the chip. The chip is created using the Chip widget from the Flutter framework. The Container widget is used to provide a margin around the chip and to make the background of the chip transparent. The labelPadding property is used to add padding around the text label within the chip. The elevation and shadowColor properties are used to remove the default shadow from the chip. Finally, the padding property is used to add padding around the entire chip.

## chipForList Widget
This implementation generates a Wrap widget with Chip widgets for each skill label in the input list. The Wrap widget allows the Chip widgets to be displayed in a horizontal row that wraps to the next line if necessary. The spacing property sets the amount of horizontal space between each Chip, while runSpacing sets the amount of vertical space between each row of Chip widgets.

## showDialogBoxWithWrapWidget Widget
The first function showDialogBoxWithWrapWidget displays an AlertDialog with a given title and a widget to be wrapped in a Container widget. The widget parameter is of type Widget and can be any valid widget. The function returns a Future which can be used to control the dialog box, such as closing it programmatically.

The second function showDialogBoxTabs displays an AlertDialog with a given title and a horizontal Row of skills displayed as chips. The function returns a Future which can be used to control the dialog box, such as closing it programmatically.

## Splash Screen init method
This code snippet is part of a State class and is initializing the state of a widget. In the initState() method, the super.initState() method is called to initialize the state of the parent widget.

Then, the SystemChrome.setSystemUIOverlayStyle() method is called to set the style of the system overlay UI. In this case, it sets the color of the status bar to transparent.

Finally, a Timer is created to delay the execution of a task by the specified duration of 3 seconds. After 3 seconds, the Navigator.pushReplacement() method is called to replace the current route with a new route to the DashboardController widget. This means that the user will be redirected to the dashboard after 3 seconds.

## SplashScreenController Widget
This is a widget that displays a loading screen while the app is initializing. The loading screen has a logo and a text indicating the app name, as well as a spinning progress indicator. The logo and text are centered vertically and horizontally, and the progress indicator is displayed at the bottom. The background color is set to a palette color and the text color is white. The widget is implemented as a stateless widget with a Scaffold as the root widget, containing a Container with a specified width and height. Inside the Container, there is a Center widget with two children, a Column and a SizedBox. The Column contains the logo and text, and the SizedBox contains the progress indicator and additional text. Overall, this widget provides a visually appealing way to indicate to the user that the app is loading.

</hr>

# Dashboard Controller Widget
This is a StatelessWidget that returns a Scaffold with a SingleChildScrollView as its body. The SingleChildScrollView contains a Container that has a background image set using a BoxDecoration. The background image is blurred using a BackdropFilter.

Inside the Container, there are two Containers wrapped inside a Column. The first Container has some margin and padding set, and it displays the text "I'm Tariq Mehmood" using the GoogleFonts poppins font family.

The second Container is wrapped inside an InkWell and has a Row containing text and an icon. When the InkWell is tapped, it navigates to a new screen using a MaterialPageRoute.

Overall, this widget creates a landing page with a background image, a blurred text overlay, and a button to navigate to another screen.

</hr>

## dynamicChips widget
This function generates a list of dynamic chips based on a given list of strings and a background color. Each chip consists of an avatar, a label, and a delete icon. The avatar is a circle with a single letter inside, taken from the first character of the corresponding string in the list. The label is the entire string. The delete icon is a checkmark icon.
The Wrap widget is used to display the chips in a responsive manner, with the spacing and run spacing set to 10 and 0 respectively.
The List<Widget>.generate method is used to generate a list of Chip widgets based on the length of the input list. Each Chip widget has an onDeleted function that does nothing, a deleteIcon of a checkmark icon, and a CircleAvatar widget as its avatar, with the first character of the corresponding string from the input list as its child.
The labelPadding, elevation, shadowColor, and padding properties of the Chip widget are all set to specific values, while the backgroundColor is set to the input background color and the label is set to the corresponding string from the input list with a black font color.
