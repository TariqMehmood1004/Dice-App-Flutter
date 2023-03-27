import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/colors/app_colors.dart';

class DashboardController extends StatefulWidget {
  const DashboardController({super.key});

  @override
  State<DashboardController> createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/p2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 350, right: 90),
                      padding: const EdgeInsets.symmetric(vertical: 150),
                      decoration: BoxDecoration(
                        color: AppColorController.transparent,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        'I\'m Tariq Mehmood'.toUpperCase(),
                        style: GoogleFonts.poppins(
                          color: AppColorController.backgroundLight,
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: AppColorController.palleteColor1,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Text(
                              'Explore my Resume'.toUpperCase(),
                              style: TextStyle(
                                color: AppColorController.cardBGColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_right,
                              color: AppColorController.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
