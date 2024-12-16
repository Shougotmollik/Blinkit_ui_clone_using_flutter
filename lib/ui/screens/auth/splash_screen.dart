import 'package:blinkit_clone/ui/screens/auth/sign_in_screen.dart';
import 'package:blinkit_clone/ui/utils/app_assets_path.dart';
import 'package:blinkit_clone/ui/utils/app_colors.dart';
import 'package:blinkit_clone/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SignInScreen(),
          ));
    }
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBGColor,
        body: Center(
          child:
              UiHelper.CustomImage(path: AppAssetsPath.logo, isNetwork: false),
        ));
  }
}
