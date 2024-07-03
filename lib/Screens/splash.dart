import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'HomeScreen.dart';

class splash extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 2000,
        backgroundColor: const Color(0xff003D76),
        centered: true,
        splashIconSize: 250,
        splash: Lottie.asset('assets/lottie/pick.json'),
        nextScreen: homeScreen());
  }
}
