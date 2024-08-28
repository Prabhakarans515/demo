import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'login_page_design.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          context.go('/login_page_design');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          Center(
            child: Image.asset('assets/splash.png'),
          ),
          Positioned(
            top: 150,
            left: 170,
            child: SizedBox(
              height: 20.0,
              width: 20.0,
              child: CircularProgressIndicator(
                strokeWidth: 3.0,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          ),
        ],
      ),
      curve: Curves.bounceOut,
      splashTransition: SplashTransition.sizeTransition,
      centered: true,
      backgroundColor: Colors.black,
      splashIconSize: 200,
      duration: 1000,
      nextScreen: LoginPage(),
    );
  }
}
