import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    this.color,
    this.padding,
    this.boxShadow,
  });

  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  final EdgeInsets? padding;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 34.h,
      width: width ?? 34.w,
      padding: padding,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        color: color ?? whiteColor.withOpacity(0.29),
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
