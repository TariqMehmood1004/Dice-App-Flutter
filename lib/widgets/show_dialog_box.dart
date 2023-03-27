// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:resume/utils/colors/app_colors.dart';

// ignore: non_constant_identifier_names
Future<dynamic> ShowDialogBox(
    BuildContext context, String showTitle, String desciption) {
  return showDialog(
    barrierColor: AppColorController.blackTransparent,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColorController.chocolateColor,
        title: Text(
          showTitle.toUpperCase(),
          style: TextStyle(
            color: AppColorController.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        content: Text(
          desciption.toString(),
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: AppColorController.colorBox2,
            fontSize: 12,
          ),
        ),
      );
    },
  );
}

Future<dynamic> showDialogBoxWithWrapWidget(
    BuildContext context, String showTitle, Widget widget) {
  return showDialog(
    barrierColor: AppColorController.blackTransparent,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColorController.chocolateColor,
        title: Text(
          showTitle.toUpperCase(),
          style: TextStyle(
            color: AppColorController.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        content: widget,
      );
    },
  );
}

Future<dynamic> showDialogBoxTabs(BuildContext context, String showTitle) {
  return showDialog(
    barrierColor: AppColorController.blackTransparent,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColorController.chocolateColor,
        title: Text(
          showTitle.toUpperCase(),
          style: TextStyle(
            color: AppColorController.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        content: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  skills('C/C++'),
                  skills('C#'),
                  skills('python'),
                  skills('dart programming'),
                  skills('Flutter development'),
                  skills('Web Development'),
                  skills('PHP'),
                  skills('Java'),
                  skills('Xamarin'),
                  skills('Mobile Application'),
                  skills('Computer Teacher'),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

Container skills(String skill) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.all(3.0),
    decoration: BoxDecoration(
      color: AppColorController.greyColor,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Text(
      skill.toUpperCase(),
      style: TextStyle(
        color: AppColorController.white,
        fontSize: 12.0,
      ),
    ),
  );
}
