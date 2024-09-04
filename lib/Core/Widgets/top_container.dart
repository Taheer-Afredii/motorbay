import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/app_bar_widget.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
    this.height,
  });
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 245.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          image: const DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(containerImage),
            scale: 4,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22.r),
            bottomRight: Radius.circular(22.r),
          ),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: AppbarWidget(width: 95.w, text: "Profile")));
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

class TopContainer3 extends StatelessWidget {
  const TopContainer3({
    super.key,
    this.height,
    this.scale,
    this.appBarwidth,
    this.text,
    this.leftpadding,
    this.toppadding,
  });
  final double? height;
  final double? scale;
  final double? appBarwidth;
  final String? text;
  final double? leftpadding;
  final double? toppadding;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 128.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(containerImage),
            scale: 4,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: leftpadding ?? 24.w, top: toppadding ?? 60.h),
          child: AppbarWidget2(
              width: appBarwidth ?? 62.w, text: text ?? "Add Services"),
        ));
  }
}
