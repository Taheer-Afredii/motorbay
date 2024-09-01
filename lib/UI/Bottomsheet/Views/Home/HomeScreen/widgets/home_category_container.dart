import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class HomeCategoryContainer extends StatelessWidget {
  const HomeCategoryContainer({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
    required this.text2,
  });
  final VoidCallback onTap;
  final String icon;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 61.h,
        width: 123.57.w,
        padding: EdgeInsets.only(top: 8.w, right: 8.w, left: 8.w, bottom: 8.h),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(7.23.r),
        ),
        child: Row(
          children: [
            Container(
              height: 44.83,
              width: 44.83,
              decoration: BoxDecoration(
                color: const Color(0xFFECECEC),
                borderRadius: BorderRadius.circular(7.23.r),
              ),
              padding:
                  EdgeInsets.only(left: 8.w, right: 9.w, top: 8.h, bottom: 9.h),
              child: Image.asset(icon),
            ),
            SizedBox(width: 6.73.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                montserratText(
                  text: text,
                  color: blackColor,
                  fontSize: 9.94.sp,
                ),
                montserratText(
                  text: text2,
                  color: blackColor,
                  fontSize: 9.94.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCategoryModel {
  final String icon;
  final String text;
  final String text2;
  final VoidCallback onTap;
  HomeCategoryModel(
      {required this.icon,
      required this.text,
      required this.text2,
      required this.onTap});
}

List<HomeCategoryModel> homeCategoryList = [
  HomeCategoryModel(
    icon: gearboxIcon,
    text: "Gearbox",
    text2: "Repair",
    onTap: () {},
  ),
  HomeCategoryModel(
    icon: wheelIcon,
    text: "Wheel",
    text2: "Alignment",
    onTap: () {},
  ),
  HomeCategoryModel(
    icon: engineoilIcon,
    text2: "Change",
    text: "Oil",
    onTap: () {},
  ),
];
