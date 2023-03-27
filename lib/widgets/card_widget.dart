import 'package:flutter/material.dart';
import 'package:resume/utils/colors/app_colors.dart';

class TabSkills {
  static var skills = [
    "C#",
    "C/C++",
    "Flutter Development",
    "Java",
    "Dart Programming",
    "Computer Teacher",
    "Xamarin",
    "ASP.NET",
    "Database Developer",
    "Web Development",
    "Mobile Development",
    "Python",
  ];

  static var description = [
    "I have had some bad experiences in the past. Only the person experiencing the pain can know how bad that pain is,' she said. The foundation also carries out research on the economic experiences of people who earn low wages. You know how it made you feel after one experience.",
  ];
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.fontSize,
    required this.boxWidth,
    required this.boxHeight,
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    this.backContainerColor = const Color(0xFF260615),
    this.isClicked = true,
    required this.controller,
  });

  final String imagePath;
  final String title;
  final double fontSize;
  final double boxWidth;
  final double boxHeight;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Color backContainerColor;
  final bool isClicked;
  final VoidCallback? controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: boxWidth,
        height: boxHeight,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: isClicked ? backContainerColor : AppColorController.blueLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
        ),
        child: InkWell(
          onTap: controller,
          highlightColor: AppColorController.blackTransparent,
          focusColor: AppColorController.blackTransparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 15,
                // foregroundColor: AppColorController.prettyBlue,
                backgroundColor: AppColorController.palleteColor1,
                backgroundImage: AssetImage(imagePath),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: AppColorController.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
