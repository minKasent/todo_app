import 'package:flutter/material.dart';
import 'package:flutter_rc/components/app_button.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_image_path.dart';

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
            SizedBox(height: 60),
            Center(child: Image.asset(AppImagePath.manWithIphoneImg)),
            SizedBox(height: 45),
            ..._buildTextWidget(),
            AppButton(
              content: 'Get Started',

              /// TODO: Navigate to Register Screen
              onTap: () {},
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
      SizedBox(height: 36),
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
