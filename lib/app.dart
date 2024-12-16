import 'package:blinkit_clone/ui/screens/auth/splash_screen.dart';
import 'package:flutter/material.dart';

class BlinkitApp extends StatelessWidget {
  const BlinkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SplashScreen(),
    );
  }
}
