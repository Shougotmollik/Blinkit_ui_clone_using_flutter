import 'package:blinkit_clone/ui/utils/app_assets_path.dart';
import 'package:blinkit_clone/ui/utils/app_colors.dart';
import 'package:blinkit_clone/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(
                path: AppAssetsPath.onboardingImg, isNetwork: false),
            SizedBox(height: 20),
            UiHelper.CustomImage(path: AppAssetsPath.logo2, isNetwork: false),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: 'India’s last minute app',
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            SizedBox(height: 30),
            _buildLoginCard()
          ],
        ),
      ),
    );
  }

  Widget _buildLoginCard() {
    return Card(
      elevation: 3,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.85,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLoginButton(),
              SizedBox(height: 8),
              UiHelper.CustomText(
                text: 'Access your saved addresses from Zomato automatically!',
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 10,
              ),
              SizedBox(height: 12),
              _buildLoginWithPhoneBtn()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginWithPhoneBtn() {
    return TextButton(
        onPressed: () {},
        child: UiHelper.CustomText(
          text: 'or login with phone number',
          color: AppColors.greenColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ));
  }

  Widget _buildLoginButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 48,
        width: 295,
        decoration: BoxDecoration(
          color: AppColors.redColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomText(
                text: 'Login with ',
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
              UiHelper.CustomImage(path: AppAssetsPath.logo3),
            ],
          ),
        ),
      ),
    );
  }
}
