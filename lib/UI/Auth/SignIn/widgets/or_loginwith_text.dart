import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/text_constant.dart';

class OrLoginWithText extends StatelessWidget {
  const OrLoginWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1.h,
              color: const Color(0xFFC4C4C4),
            ),
          ),
          SizedBox(width: 24.w),
          montserratText(
            text: "Or Login with",
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF868696),
          ),
          SizedBox(width: 24.w),
          Expanded(
            child: Container(
              height: 1.h,
              color: const Color(0xFFC4C4C4),
            ),
          ),
        ],
      ),
    );
  }
}
