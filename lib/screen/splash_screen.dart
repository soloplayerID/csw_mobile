import 'dart:async';

import 'package:csw_attendance/helper/apps_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {});
    return Scaffold(
      backgroundColor: kLightBlue,
      body: Center(
        child: Text('CSW Attendance',
            style: kPoppinsRegularBold.copyWith(color: kWhite, fontSize: 35)),
      ),
    );
  }
}
