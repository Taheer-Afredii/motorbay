import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class LoginAndSecurityContainer extends StatelessWidget {
  const LoginAndSecurityContainer({
    super.key,
    this.onTap,
    this.icon,
    this.text,
  });

  final VoidCallback? onTap;
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.32.r),
          color: primaryColor.withOpacity(0.05),
        ),
        child: Container(
          height: 41.63.h,
          decoration: BoxDecoration(
            color: whiteColor,
            border:
                Border.all(color: primaryColor.withOpacity(0.8), width: 1.w),
            borderRadius: BorderRadius.circular(8.32.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: montserratText12(
                      text: text ?? "", fontWeight: FontWeight.w600)),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Icon(
                  icon,
                  color: blackColor,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreenContainer extends StatelessWidget {
  const ProfileScreenContainer({super.key, this.onTap, this.text});

  final void Function()? onTap;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.32.r),
          color: primaryColor.withOpacity(0.05),
        ),
        child: Container(
          height: 41.63.h,
          padding: EdgeInsets.only(left: 20.w),
          decoration: BoxDecoration(
            color: whiteColor,
            border:
                Border.all(color: primaryColor.withOpacity(0.8), width: 1.w),
            borderRadius: BorderRadius.circular(8.32.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              montserratText12(text: text ?? "", fontWeight: FontWeight.w600),
              const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
