import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/app_textfield.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/UI/Auth/ForgotPassword/forgot_password_screen.dart';
import 'package:motorbay/UI/Auth/SignIn/widgets/or_loginwith_text.dart';
import 'package:motorbay/UI/Auth/SignIn/widgets/socail_button.dart';
import 'package:motorbay/UI/Auth/SignUp/sign_up_screen.dart';
import 'package:motorbay/UI/Bottomsheet/app_bottom_nav_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                const SignInTopContainer(),
                Padding(
                  padding: EdgeInsets.only(top: 53.h),
                  child: Image.asset(
                    logo,
                    height: 91.86.h,
                    width: 122.w,
                  ),
                ),
                Container(
                  // height: 383.h,
                  padding: EdgeInsets.only(
                      left: 26.61.w, right: 28.5.w, top: 25.h, bottom: 29.h),
                  margin: EdgeInsets.only(top: 170.h, left: 27.w, right: 28.w),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: blackColor.withOpacity(0.1),
                        blurRadius: 10.r,
                        spreadRadius: 1.r,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      montserrat16Text(
                          text: "Hello Welcome back!",
                          fontSize: 18.35.sp,
                          color: authHeadingcol),
                      SizedBox(height: 10.h),
                      montserratText(
                        text: "Sign In to continue",
                        fontSize: 12.85.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF868696),
                      ),
                      SizedBox(height: 34.h),
                      CustomTextField(
                        label: "Username",
                        hintText: "Enter Username or Email...",
                        controller: usernameController,
                        labelColor: textLabelColor,
                      ),
                      SizedBox(height: 26.61.h),
                      PasswordTextField(
                        label: "Password",
                        hintText: "********",
                        hintColor: const Color(0xFF646464),
                        controller: passwordController,
                        labelColor: textLabelColor,
                      ),
                      SizedBox(height: 11.28.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.dialog(ForgotPasswordScreen());
                          },
                          child: montserratText(
                            text: "Forgot Password?",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 28.52.h),
                      AppButton(
                        onPressed: () {
                          Get.offAll(() => const AppBottomNavScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // const Spacer(),
            SizedBox(height: 35.h),
            const OrLoginWithText(),
            SizedBox(height: 27.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  image: googleIcon,
                  onPressed: () {},
                ),
                SizedBox(width: 18.w),
                SocialButton(
                  image: facebookIcon,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 105.5.h),
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: montserratTextStyle(
                  color: const Color(0xFF868696),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                      text: "Sign Up",
                      style: GoogleFonts.montserrat(
                        color: primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        //ontap
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.dialog(
                            SignUpScreen(),
                            barrierDismissible: true,
                          );
                        }),
                ],
              ),
            ),
            SizedBox(height: 43.h),
          ],
        ),
      ),
    );
  }
}
