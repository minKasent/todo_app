import 'package:flutter/material.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_image_path.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String? imagePath;

  const CircleAvatarWidget({this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100 / 375 * MediaQuery.of(context).size.width,
      height: 100 / 375 * MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: AppColorPath.white,
        border: Border.all(color: AppColorPath.darkBlue, width: 2),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(imagePath ?? AppImagePath.manWithIphoneImg),
      ),
    );
  }
}
