import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.image,
    required this.onPressed,
  });
  final String image;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 46.h,
        width: 72.w,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F5F5),
          border: Border.all(
            color: const Color(0xFF868696),
            width: 0.2.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Image.asset(
            image,
            height: 22.31.h,
            width: 22.31.w,
          ),
        ),
      ),
    );
  }
}
