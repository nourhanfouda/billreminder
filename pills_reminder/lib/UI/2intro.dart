import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:pills_reminder/UI/3home.dart';
import 'package:pills_reminder/utilities/Colors.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final onboardingPagesList = [
      PageModel(
        assetPath: 'assets/images/intro1.png',
        title: 'MEDICINE REMINDER',
        info: "Enter Your Medicines And We Will Remind You To Take It",
      ),
      PageModel(
        assetPath: 'assets/images/intro2.png',
        title: 'VITAMINES REMIDER',
        info: 'Enter Your Vitamines And We Will Remind Tou To Take It',
      ),
    ];
    return Scaffold(
      body: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
            proceedButtonRoute: (context) {
              return Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
                (route) => false,
              );
            },
            proceedButtonText: 'finish'),
        pages: onboardingPagesList,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.polygon(
            polygonDesign: PolygonDesign(polygon: DesignType.polygon_circle),
          ),
        ),
        background: maincolor,
      ),
    );
  }
}
