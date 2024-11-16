import 'dart:async';

import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to show the splash screen for 3 seconds
    Timer(const Duration(seconds: 3), () {
      // Navigate to the main screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // Black background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BM',
              style: TextStyle(
                color: Colors.white, // White text
                fontSize: 50, // Large size for "BM"
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'eSport Zone',
              style: TextStyle(
                color: Colors.white, // White text
                fontSize: 30, // Smaller size for "eSport Zone"
              ),
            ),
          ],
        ),
      ),
    );
  }
}