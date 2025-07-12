import 'package:flutter/material.dart';
import 'package:flutter_rc/constants/app_color_path.dart';
import 'package:flutter_rc/constants/app_data.dart';
import 'package:flutter_rc/models/task.dart';

class CheckboxWithTitleWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final Task task;
  final int index;

  const CheckboxWithTitleWidget({
    this.onTap,
    required this.task,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 17,
            width: 17,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: AppColorPath.black, width: 1),
              color:
                  AppData.tasks[index].isCompleted
                      ? AppColorPath.lightBlue
                      : AppColorPath.white,
            ),
          ),
        ),
        SizedBox(width: 11),
        Text(
          AppData.tasks[index].title,
          style: TextStyle(
            color: AppColorPath.black,
            fontFamily: 'PopPins',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            decoration:
                AppData.tasks[index].isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
