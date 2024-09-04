import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
    required this.width,
    required this.text,
  });
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CircleContainer(
            padding:
                EdgeInsets.only(left: 8.w, right: 9.w, top: 8.h, bottom: 9.h),
            child: Center(
              child: Image.asset(
                backbuttonIcon,
                width: 10.w,
                height: 17.h,
              ),
            ),
          ),
        ),
        SizedBox(width: width),
        montserratText(
            text: text,
            fontSize: 24.sp,
            color: whiteColor,
            fontWeight: FontWeight.w600),
      ],
    );
  }
}

class AppbarWidget2 extends StatelessWidget {
  const AppbarWidget2({
    super.key,
    required this.width,
    required this.text,
  });
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CircleContainer(
            padding:
                EdgeInsets.only(left: 8.w, right: 9.w, top: 8.h, bottom: 9.h),
            child: Center(
              child: Image.asset(
                backbuttonIcon,
                width: 10.w,
                height: 17.h,
              ),
            ),
          ),
        ),
        SizedBox(width: width),
        montserratText(
            text: text,
            fontSize: 24.sp,
            color: whiteColor,
            fontWeight: FontWeight.w600),
      ],
    );
  }
}
