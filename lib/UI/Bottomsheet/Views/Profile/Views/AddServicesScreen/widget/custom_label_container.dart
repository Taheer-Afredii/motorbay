import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLabelContainer extends StatelessWidget {
  const CustomLabelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "",
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Positioned(
          left: 16.w,
          top: -10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            color: const Color(0xFFF5F5F5),
            child: Text(
              "Enter your reason",
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
