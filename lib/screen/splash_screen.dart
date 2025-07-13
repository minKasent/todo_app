import 'package:flutter/material.dart';
import 'package:flutter_rc/components/app_button.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_image_path.dart';
import 'package:flutter_rc/screen/registration_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColorPath.lightWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImagePath.bgTopLeftCircilesImg),
            const SizedBox(height: 60),
            Center(child: Image.asset(AppImagePath.manWithIphoneImg)),
            const SizedBox(height: 45),
            ..._buildTextWidget(),
            AppButton(
              content: 'Get Started',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTextWidget() {
    return [
      Center(
        child: Text(
          'Gets things done with TODO',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'PopPins',
            color: AppColorPath.black.withValues(alpha: 0.75),
          ),
        ),
      ),
      const SizedBox(height: 36),
      Center(
        child: Text(
          'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. '
          ' Interdum \n dictum tempus, interdum at dignissim \n metus.'
          ' Ultricies sed nunc.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            color: AppColorPath.black.withValues(alpha: 0.75),
            fontFamily: 'PopPins',
          ),
        ),
      ),
      const Spacer(),
    ];
  }
}
