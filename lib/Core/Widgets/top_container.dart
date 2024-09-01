import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22.r),
          bottomRight: Radius.circular(22.r),
        ),
      ),
      child: Image.asset(
        containerImage,
        scale: 4,
        alignment: Alignment.topRight,
      ),
    );
  }
}

class TopContainer2 extends StatelessWidget {
  const TopContainer2({
    super.key,
    this.height,
    this.scale,
  });
  final double? height;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 128.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: primaryColor,
      ),
      child: Image.asset(
        containerImage,
        scale: scale ?? 4,
        alignment: Alignment.topRight,
      ),
    );
  }
}
