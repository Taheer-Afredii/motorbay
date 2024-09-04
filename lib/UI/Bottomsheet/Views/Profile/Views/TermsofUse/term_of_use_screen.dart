import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';

class TermOfUseScreen extends StatelessWidget {
  const TermOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Column(
        children: [
          TopContainer3(
            text: "Terms of use",
            appBarwidth: 51.w,
            toppadding: 66.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 878.h,
                width: 1.sw,
                margin: EdgeInsets.only(
                    top: 28.h, right: 23.w, left: 23.w, bottom: 47.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
