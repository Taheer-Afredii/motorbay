import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class ReviewAddButton extends StatelessWidget {
  const ReviewAddButton({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 25.w),
        child: DottedBorder(
            borderType: BorderType.RRect,
            padding: EdgeInsets.zero,
            dashPattern: const [4],
            strokeWidth: 1.2,
            radius: Radius.circular(8.45.r),
            color: primaryColor,
            child: SizedBox(
              width: 176.w,
              height: 53.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle,
                    color: primaryColor,
                    size: 25.sp,
                  ),
                  SizedBox(width: 10.w),
                  montserratText(
                      text: "Add Review",
                      fontSize: 16.9.sp,
                      color: primaryColor)
                ],
              ),
            )),
      ),
    );
  }
}
