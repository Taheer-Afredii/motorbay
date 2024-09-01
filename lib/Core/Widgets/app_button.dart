import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.color,
    this.width,
    this.height,
    this.radius,
    this.text,
    this.onPressed,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
  });

  final Color? color;
  final double? width;
  final double? height;
  final double? radius;
  final String? text;
  final Function()? onPressed;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 54.h,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? primaryColor,
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        child: Center(
          child: montserratText(
            text: text ?? "Sign In",
            fontSize: fontSize ?? 16.sp,
            fontWeight: fontWeight ?? FontWeight.w600,
            color: fontColor ?? whiteColor,
          ),
        ),
      ),
    );
  }
}
