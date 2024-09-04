// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class ReviewListview extends StatelessWidget {
  ReviewListview(
      {super.key,
      required this.image,
      required this.name,
      required this.message,
      required this.time,
      required this.rating,
      required this.onTap,
      required this.isExpanded,
      required this.onSeeMoreSeeLessTap,
      required this.islastItem});
  final String image;
  final String name;
  final String message;
  final String time;
  final String rating;
  final VoidCallback onTap;
  final VoidCallback onSeeMoreSeeLessTap;
  bool isExpanded = false;
  final bool islastItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.68.r),
                    image: DecorationImage(image: AssetImage(image))),
              ),
              SizedBox(width: 16.w),
              Expanded(
                flex: 18,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    montserratText(
                      text: name,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFF0F1828),
                    ),
                    SizedBox(height: 3.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: isExpanded
                                ? message
                                : message.length > 15
                                    ? message.substring(0, 15)
                                    : message,
                            style: montserratTextStyle(
                              fontSize: 13.53.sp,
                              color: const Color(0xFFADB5BD),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          if (!isExpanded && message.length > 15)
                            TextSpan(
                              text: '...',
                              style: montserratTextStyle(
                                fontSize: 13.53.sp,
                                color: const Color(0xFFADB5BD),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          if (!isExpanded && message.length > 10)
                            TextSpan(
                              text: ' See More',
                              style: GoogleFonts.montserrat(
                                fontSize: 13.53.sp,
                                color: const Color(0xFFADB5BD),
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  onSeeMoreSeeLessTap();
                                },
                            ),
                          if (isExpanded)
                            TextSpan(
                              text: '  See Less',
                              style: GoogleFonts.montserrat(
                                fontSize: 13.53.sp,
                                color: const Color(0xFFADB5BD),
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  onSeeMoreSeeLessTap();
                                },
                            ),
                        ],
                      ),
                    ),
                    // montserratText(
                    //   text: message,
                    //   maxLines: isExpanded ? 100 : 1,
                    //   fontSize: 14.sp,
                    //   fontWeight: FontWeight.normal,
                    //   color: const Color(0XFFADB5BD),
                    // ),
                    // // SizedBox(height: 3.h),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: GestureDetector(
                    //     onTap: onSeeMoreSeeLessTap,
                    //     child: montserratText(
                    //       text: isExpanded ? "See Less" : "See More",
                    //       maxLines: 1,
                    //       fontSize: 12.sp,
                    //       fontWeight: FontWeight.normal,
                    //       color: const Color(0XFFFE6404),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  montserratText(
                    text: time,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFF0F1828).withOpacity(0.5),
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yelloColor,
                        size: 12.sp,
                      ),
                      SizedBox(width: 2.w),
                      montserratText(
                        text: rating,
                        fontSize: 10.15.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF363030),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // SizedBox(height: 0.h),
          if (!islastItem) ...[
            SizedBox(height: 10.h),
            Divider(
              color: const Color(0xFFE9E9E9),
              height: 0.h,
              endIndent: 0.w,
              indent: 60.w,
            ),
          ]
        ],
      ),
    );
  }
}
