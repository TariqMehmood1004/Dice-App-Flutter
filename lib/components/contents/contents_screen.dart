import 'package:flutter/material.dart';
import 'package:resume/widgets/card_widget.dart';
import 'package:resume/utils/colors/app_colors.dart';
import 'package:resume/widgets/show_dialog_box.dart';

class ContentScreenController extends StatefulWidget {
  const ContentScreenController({super.key});

  @override
  State<ContentScreenController> createState() =>
      _ContentScreenControllerState();
}

class _ContentScreenControllerState extends State<ContentScreenController> {
  var skillExpert = [
    'C/C++',
    'C+',
    'Java',
    'Dart',
    'Flutter',
    'Python',
    'Assembly Language',
    'Php',
    'ASP.NET',
    'Xamarin',
    'Data Scientist',
    'Database  Developer',
    'Perl Language',
  ];

  var experiences = [
    '2 years experience of computer teaching',
    '9 years of coding experience',
    '6 months experience of data science'
  ];
  var hobbies = ['programming', 'cricket', 'football', 'tennis table'];

  var achievementList = ['Flutter Expert', 'C# Expert', 'C++ Expert'];

  var qualifications = [
    'BSSE 7th semester continue (3.08 CGPA)',
    'ICS BISE Multan',
    'Matric with Computer Science'
  ];

  var expertiseList = [
    'Flutter',
    'C#',
    'C++',
    'Data Science',
    'Python',
    'Web Application',
    'Computer Teaching'
  ];

  var contentsList = {
    "Objective":
        "I have had some bad experiences in the past. Only the person experiencing the pain can know how bad that pain is,' she said. The foundation also carries out research on the economic experiences of people who earn low wages. You know how it made you feel after one experience.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorController.chocolateColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: Text(
                'Resume'.toUpperCase(),
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: AppColorController.white,
                ),
              ),
            ),
            resumeHeading(context),

            //card 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 150,
                  boxHeight: 130,
                  imagePath: 'assets/images/objective.png',
                  fontSize: 11,
                  title: 'Objective',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(
                        context, 'Objective', TabSkills.description[0]);
                  },
                ),
                CardWidget(
                  boxWidth: 200,
                  boxHeight: 130,
                  imagePath: 'assets/images/exp.png',
                  fontSize: 11,
                  title: 'Experience',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    showDialogBoxWithWrapWidget(
                      context,
                      'Experiences',
                      dynamicChips(
                          experiences, AppColorController.prettyOrange),
                    );
                  },
                ),
              ],
            ),
            //card 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 355,
                  boxHeight: 100,
                  imagePath: 'assets/images/skills.png',
                  fontSize: 11,
                  title: 'Skils',
                  topLeft: 20,
                  topRight: 0,
                  bottomLeft: 0,
                  bottomRight: 20,
                  controller: () {
                    showDialogBoxWithWrapWidget(
                        context, 'Skills Setting', wrapWidget());
                  },
                ),
              ],
            ),
            //
            //card 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 355,
                  boxHeight: 100,
                  imagePath: 'assets/images/acheivements.png',
                  fontSize: 11,
                  title: 'Achievements',
                  topLeft: 0,
                  topRight: 20,
                  bottomLeft: 20,
                  bottomRight: 0,
                  controller: () {
                    showDialogBoxWithWrapWidget(
                        context,
                        'Achievements',
                        dynamicChips(
                            achievementList, AppColorController.prettyOrange));
                  },
                ),
              ],
            ),
            //card 4
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 175,
                  boxHeight: 130,
                  imagePath: 'assets/images/expertise.png',
                  fontSize: 11,
                  title: 'Expertise',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    showDialogBoxWithWrapWidget(
                        context,
                        'Expertise',
                        dynamicChips(
                            expertiseList, AppColorController.prettyOrange));
                  },
                ),
                CardWidget(
                  boxWidth: 175,
                  boxHeight: 130,
                  imagePath: 'assets/images/qualification.png',
                  fontSize: 11,
                  title: 'Qualification',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    showDialogBoxWithWrapWidget(
                      context,
                      'Qualification',
                      dynamicChips(
                          qualifications, AppColorController.prettyOrange),
                    );
                  },
                ),
              ],
            ),

            //
            //card 5
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CardWidget(
                  boxWidth: 200,
                  boxHeight: 130,
                  imagePath: 'assets/images/hobbies.png',
                  fontSize: 11,
                  title: 'Hobbies',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    showDialogBoxWithWrapWidget(
                      context,
                      'Qualification',
                      dynamicChips(hobbies, AppColorController.prettyOrange),
                    );
                  },
                ),
                CardWidget(
                  boxWidth: 150,
                  boxHeight: 130,
                  imagePath: 'assets/images/ref.png',
                  fontSize: 11,
                  title: 'References',
                  topLeft: 10,
                  topRight: 10,
                  bottomLeft: 10,
                  bottomRight: 10,
                  controller: () {
                    ShowDialogBox(context, 'References',
                        'References will be furnished on demand.');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container resumeHeading(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.10,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          color: AppColorController.palleteColor1,
          borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: false,
            backgroundColor: AppColorController.blueBlack,
            barrierColor: AppColorController.backgroundDarkTransparented,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
            ),
            context: context,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 12.0),
                  Container(
                    alignment: Alignment.topLeft,
                    color: AppColorController.transparent,
                    child: Wrap(
                      children: [
                        Text(
                          'My Profile'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                            color: AppColorController.yellowOff,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Divider(
                    color: AppColorController.colorBox2,
                    thickness: 0.1,
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 18.0),
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: AppColorController.darkBlue.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/tm.png'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Tariq Mehmood'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: AppColorController.offWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  profileWithIconAndTitle(
                      'johnbrrighte7427206@gmail.com', Icons.mail),
                  profileWithIconAndTitle(
                      'johnbrrighte7427206@gmail.com', Icons.ac_unit),
                  profileWithIconAndTitle('03077427086', Icons.phone),
                  profileWithIconAndTitle(
                      'Southern Bypass Multan', Icons.location_city),
                ],
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/tm.png'),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColorController.reddish,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Tariq Mehmood'.toUpperCase(),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: AppColorController.cardBGColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container profileWithIconAndTitle(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: AppColorController.darkBlue.withOpacity(0.02),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: AppColorController.yellowOff,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: AppColorController.offWhite,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  //
  wrapWidget() {
    return dynamicChips(skillExpert, AppColorController.prettyOrange);
  }

  //
  dynamicChips(List<String> list, Color bgColor) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 0,
      children: List<Widget>.generate(
        list.length,
        (index) => Chip(
          onDeleted: () {},
          deleteIcon: const Icon(
            Icons.check,
            size: 10,
          ),
          avatar: CircleAvatar(
            backgroundColor: AppColorController.prettyOrange,
            child: Text(
              list[index][0],
              style: const TextStyle(fontSize: 10.0),
            ),
          ),
          labelPadding: const EdgeInsets.all(0),
          elevation: 0,
          backgroundColor: bgColor,
          shadowColor: AppColorController.transparent,
          padding: const EdgeInsets.only(right: 0.0),
          label: Text(
            list[index],
            style: TextStyle(color: AppColorController.black, fontSize: 11.0),
          ),
        ),
      ),
    );
  }

  // create widgets
  Widget chipForRow(String skillLabel, Color bgColor) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorController.transparent,
      ),
      margin: const EdgeInsets.all(0.5),
      child: Chip(
        labelPadding: const EdgeInsets.all(0.5),
        elevation: 0,
        backgroundColor: bgColor,
        shadowColor: AppColorController.transparent,
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 7.0),
        label: Text(
          skillLabel,
          style: TextStyle(color: AppColorController.offWhite, fontSize: 11.0),
        ),
      ),
    );
  }

  // chip widget for lists
  Widget chipForList(List<String> skillLabel, Color bgColor) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorController.transparent,
      ),
      margin: const EdgeInsets.all(0.5),
      child: ListView.builder(
        itemCount: skillExpert.length,
        itemBuilder: (context, int index) {
          return Chip(
            labelPadding: const EdgeInsets.all(0.5),
            elevation: 0,
            backgroundColor: bgColor,
            shadowColor: AppColorController.transparent,
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 7.0),
            label: Text(
              skillExpert[index],
            ),
          );
        },
      ),
    );
  }
}
