import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.hintText,
    required this.isEnable,
    required this.controller,
  });
  final String hintText;
  final bool isEnable;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155.w,
      height: 18.h,
      child: TextField(
        // readOnly: true,

        controller: controller,
        enabled: isEnable,
        style: montserratTextStyle(
          color: blackColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: montserratTextStyle(
            color: blackColor.withOpacity(0.2),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class ProfilepasswordField extends StatelessWidget {
  const ProfilepasswordField({
    super.key,
    required this.hintText,
    required this.isEnable,
    required this.controller,
  });
  final String hintText;
  final bool isEnable;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.h,
      child: TextField(
        // readOnly: true,

        controller: controller,
        enabled: isEnable,
        style: montserratTextStyle(
          color: blackColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: montserratTextStyle(
            color: blackColor.withOpacity(0.2),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
