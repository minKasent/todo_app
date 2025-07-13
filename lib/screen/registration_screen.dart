import 'package:flutter/material.dart';
import 'package:flutter_rc/components/app_button.dart';
import 'package:flutter_rc/components/app_textfield.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_image_path.dart';
import 'package:flutter_rc/screen/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return Material(
      child: Container(
        color: AppColorPath.lightWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImagePath.bgTopLeftCircilesImg),
            SizedBox(height: 76),
            ..._buildTextWidget(),
            AppTextField(
              hintText: 'Enter your full name',
              controller: nameController,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 21),
            AppTextField(
              hintText: 'Enter your email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 21),
            AppTextField(
              hintText: 'Enter password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 21),
            AppTextField(
              hintText: 'Confirm password',
              controller: confirmPasswordController,
              obscureText: true,
            ),
            SizedBox(height: 55),

            AppButton(
              content: 'Register',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            SizedBox(height: 23),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'PopPins',
                    ),

                    /// takenote: AppText
                  ),
                  Text(
                    "Sign in ",
                    style: TextStyle(
                      color: AppColorPath.lightBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PopPins',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTextWidget() {
    return [
      Center(
        child: Text(
          'Welcome Onboard!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'PopPins',
            color: AppColorPath.black.withValues(alpha: 0.75),
          ),
        ),
      ),
      SizedBox(height: 14),
      Center(
        child: Text(
          'Let’s help you meet up your tasks',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: AppColorPath.black.withValues(alpha: 0.74),
            fontFamily: 'PopPins',
          ),
        ),
      ),
      SizedBox(height: 49),
    ];
  }
}
