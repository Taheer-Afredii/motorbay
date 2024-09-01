import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/app_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 335.h,
        margin: EdgeInsets.symmetric(horizontal: 21.w),
        padding: EdgeInsets.only(left: 24.w, right: 24.h, top: 30.h),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(15.r)),
        child: Material(
          color: whiteColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                montserratText(
                    text: "Forgot Password",
                    fontSize: 18.35.sp,
                    fontWeight: FontWeight.w500,
                    color: authHeadingcol),
                SizedBox(height: 30.h),
                montserratText12(
                    text:
                        "Enter the email address that is linked to your account.",
                    maxLines: 2),
                SizedBox(height: 26.h),
                CustomTextField(
                    hintText: "Enter Email",
                    controller: controller,
                    label: "Email"),
                SizedBox(height: 50.h),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text: "Cancel",
                        onPressed: () {
                          Get.back();
                        },
                        color: const Color(0xFFE9E8E8),
                        fontColor: blackColor.withOpacity(0.5),
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Expanded(
                      child: AppButton(
                        text: "Get a link",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
