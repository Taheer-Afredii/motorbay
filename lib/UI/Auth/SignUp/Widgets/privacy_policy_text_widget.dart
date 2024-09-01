import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class PrivacyPolicyTextWidget extends StatelessWidget {
  const PrivacyPolicyTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: "By creating an account, you agree to our ",
      style: montserratTextStyle(
        color: const Color(0xFF868696),
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
      children: [
        TextSpan(
            text: "Prvicy Policy",
            style: montserratTextStyle(
              color: primaryColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {}),
        TextSpan(
          text: " and ",
          style: montserratTextStyle(
            color: const Color(0xFF868696),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextSpan(
            text: "Terms of Use",
            style: montserratTextStyle(
                color: primaryColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                height: 1.6),
            recognizer: TapGestureRecognizer()..onTap = () {}),
      ],
    ));
  }
}
