import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class OpenserviceDecriptionWidget extends StatelessWidget {
  const OpenserviceDecriptionWidget(
      {super.key, required this.text, this.onSeeMoreTap});
  final String text;
  final VoidCallback? onSeeMoreTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFB9B9B9)),
            borderRadius: BorderRadius.circular(5.52.r),
          ),
          child: ExpandableTextWidget(
            text: text,
          ),
        ),
        Positioned(
          left: 16.w,
          top: -10.h,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              color: whiteColor,
              child: montserratText(
                  text: "Description",
                  fontSize: 12.85.sp,
                  color: blackColor.withOpacity(0.8))),
        ),
      ],
    );
  }
}

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  final int maxLines;

  const ExpandableTextWidget({
    super.key,
    required this.text,
    this.maxLines = 2,
  });

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: isExpanded
                      ? widget.text
                      : widget.text.length > 70
                          ? widget.text.substring(0, 70)
                          : widget.text,
                  style: montserratTextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xFFD1D1D1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if (!isExpanded && widget.text.length > 70)
                  TextSpan(
                    text: '...',
                    style: montserratTextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xFFD1D1D1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                if (!isExpanded && widget.text.length > 70)
                  TextSpan(
                    text: ' See More',
                    style: montserratTextStyle(
                      fontSize: 12.sp,
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                if (isExpanded)
                  TextSpan(
                    text: ' See Less',
                    style: montserratTextStyle(
                      fontSize: 12.sp,
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                // if (isExpanded)
                //   TextSpan(
                //     text: '  See Less',
                //     style: montserratTextStyle(
                //       fontSize: 12.sp,
                //       color: primaryColor,
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
