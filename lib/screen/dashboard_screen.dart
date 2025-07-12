import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_data.dart';
import 'package:flutter_rc/constants/app_image_path.dart';
import 'package:flutter_rc/screen/widgets/checkbox_with_title_widget.dart';
import 'package:flutter_rc/screen/widgets/circle_avatar_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColorPath.lightWhite,
          body: Column(
            children: [
              _buildUserInfoWidget(),
              SizedBox(height: 25),
              _buildGreetingTextWidget(),
              AnimatedAnalogClock(
                location: 'Australia/Sydney',
                backgroundColor: AppColorPath.white,
                size: 120 / 375 * MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 21),
              _buildTasksListText(),
              SizedBox(height: 20),
              _buildListTasksListWidget(),
            ],
          ),
        ),
        Positioned(child: Image.asset(AppImagePath.bgTopLeftCircilesImg)),
      ],
    );
  }

  Container _buildUserInfoWidget() {
    return Container(
      height: 308 / 812 * MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColorPath.lightBlue),
      child: Column(
        children: [
          SizedBox(height: 133 / 812 * MediaQuery.of(context).size.height),
          CircleAvatarWidget(),
          SizedBox(height: 18),
          Text(
            "Welcome, Oliva Grace",
            style: TextStyle(
              color: AppColorPath.white,
              fontFamily: 'PopPins',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildGreetingTextWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Good Afternoon",
          style: TextStyle(
            color: AppColorPath.black,
            fontFamily: 'PopPins',
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        SizedBox(width: 25),
      ],
    );
  }

  Row _buildTasksListText() {
    return Row(
      children: [
        SizedBox(width: 27),
        Text(
          "Tasks List",
          style: TextStyle(
            color: AppColorPath.black,
            fontFamily: 'PopPins',
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Container _buildListTasksListWidget() {
    return Container(
      height: 248 / 812 * MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 27 * 2,
      padding: EdgeInsets.symmetric(horizontal: 21, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColorPath.white,
        boxShadow: [
          BoxShadow(
            color: AppColorPath.black.withValues(alpha: 0.25),
            offset: Offset(0, 4),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tasks List",
                style: TextStyle(
                  color: AppColorPath.black,
                  fontFamily: 'PopPins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Icon(Icons.add_circle_outline, color: AppColorPath.lightBlue),
            ],
          ),
          _buildTasksListContentWidget(),
        ],
      ),
    );
  }

  Flexible _buildTasksListContentWidget() {
    return Flexible(
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        child: ListView.separated(
          padding: EdgeInsets.only(top: 25),
          separatorBuilder: (context, index) {
            return SizedBox(height: 18);
          },
          itemCount: AppData.tasks.length,
          itemBuilder: (context, index) {
            return CheckboxWithTitleWidget(
              onTap:
                  () => setState(() {
                    AppData.tasks[index].isCompleted =
                        !AppData.tasks[index].isCompleted;
                  }),
              task: AppData.tasks[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}
