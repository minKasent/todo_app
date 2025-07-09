import 'package:flutter/material.dart';
import 'package:flutter_rc/components/app_button.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_image_path.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColorPath.lightWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImagePath.bgTopLeftCircilesImg),
            SizedBox(height: 76),
            ..._buildTextWidget(),
            ..._buildTextFiledWidget(),
            SizedBox(height: 15),

            AppButton(
              content: 'Register',
              /// TODO: Navigate to Login Screen
              onTap: () {},
            ),
            SizedBox(height: 23,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Already have an account? ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'PopPins',
                      ),

                    ),
                     Text("Sign in ",
                      style: TextStyle(
                        color: AppColorPath.lightBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'PopPins',
                      ),
                    ),
                ],
              ),
            )
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
      SizedBox(height: 49,),
    ];
  }
  List<Widget> _buildTextFiledWidget() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                hintStyle: TextStyle(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xFF48C9B0), width: 2),
                ),
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 21),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.white,
                contentPadding:  EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:  BorderSide(color: Color(0xFF48C9B0), width: 2),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 21),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter password',
                hintStyle: TextStyle(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFF48C9B0), width: 2),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 21),
            TextField(
              decoration: InputDecoration(
                hintText: 'Confirm password',
                hintStyle: TextStyle(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFF48C9B0), width: 2),
                ),
              ),
              obscureText: true,
            ),

          ],
        ),
      ),
      SizedBox(height: 38),
    ];
  }
}
