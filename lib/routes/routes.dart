import 'package:flutter/material.dart';

import '../screen/home_screen.dart';
import '../screen/login_screen.dart';
// import '../screen/splash_screen.dart';

final routes = {
  '/': (BuildContext context) => const LoginScreen(),
  '/home': (BuildContext context) => const HomeScreen(),
};
