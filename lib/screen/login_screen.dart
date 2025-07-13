import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rc/components/app_button.dart';
import 'package:flutter_rc/components/app_textfield.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_image_path.dart';
import 'package:flutter_rc/screen/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Material(
      child: Container(
        color: AppColorPath.lightWhite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImagePath.bgTopLeftCircilesImg),
              SizedBox(height: 35),
              Center(
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: DottedBorder(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 36),
                  dashPattern: [5, 5],
                  child: Image.asset(AppImagePath.loginImg),
                ),
              ),
              SizedBox(height: 46),
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
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: AppColorPath.lightBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppButton(
                content: 'Sign In',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              SizedBox(height: 30),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: AppColorPath.lightBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 300),
            ],
          ),
        ),
      ),
    );
  }
}
