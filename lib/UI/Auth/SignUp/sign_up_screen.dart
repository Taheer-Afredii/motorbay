import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/app_textfield.dart';
import 'package:motorbay/UI/Auth/SignUp/Widgets/privacy_policy_text_widget.dart';
import 'package:motorbay/UI/Bottomsheet/app_bottom_nav_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: SingleChildScrollView(
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 21.w, vertical: 78.h),
              padding: EdgeInsets.only(
                  top: 56.h, left: 24.w, right: 24.w, bottom: 36.h),
              // width: 348.w,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(15.r)),

              child: Column(
                children: [
                  Image.asset(
                    logoText,
                    height: 24.48.h,
                    width: 122.w,
                  ),
                  SizedBox(height: 48.h),
                  montserratText(
                      text: "Create Account",
                      fontSize: 18.35.sp,
                      color: authHeadingcol),
                  SizedBox(height: 30.h),
                  CustomTextField(
                      hintText: "Enter First Name",
                      controller: firstNameController,
                      label: "First Name"),
                  SizedBox(height: 15.h),
                  CustomTextField(
                      hintText: "Enter Last Name",
                      controller: lastNameController,
                      label: "Last Name"),
                  SizedBox(height: 15.h),
                  CustomTextField(
                      hintText: "Enter Email",
                      controller: emailController,
                      label: "Email"),
                  SizedBox(height: 15.h),
                  CustomTextField(
                      hintText: "Enter Password",
                      controller: passwordController,
                      label: "Password"),
                  SizedBox(height: 15.h),
                  CustomTextField(
                      hintText: "Enter Confirm Password",
                      controller: confirmPasswordController,
                      label: "Confirm Password"),
                  SizedBox(height: 18.h),
                  const PrivacyPolicyTextWidget(),
                  SizedBox(height: 35.h),
                  AppButton(
                    text: "Create",
                    onPressed: () {
                      Get.offAll(() => const AppBottomNavScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
