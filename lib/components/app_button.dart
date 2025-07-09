import 'package:flutter/material.dart';
import 'package:flutter_rc/constants/app_color_path.dart';

class AppButton extends StatelessWidget {
  final String content;
  final VoidCallback onTap;

  const AppButton({super.key, required this.content, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColorPath.lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: size.width - 26 * 2,
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.symmetric(horizontal: 26),
        alignment: Alignment.center,
        child: Text(
          content,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColorPath.white,
          ),
        ),
      ),
    );
  }
}
