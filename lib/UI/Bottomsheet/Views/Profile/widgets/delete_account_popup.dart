import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/UI/Auth/SignIn/sign_in_screen.dart';

class DeleteAccountPopup extends StatelessWidget {
  DeleteAccountPopup({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 287.h,
        margin: EdgeInsets.symmetric(horizontal: 21.w),
        padding: EdgeInsets.only(left: 26.w, right: 26.h, top: 52.h),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          children: [
            montserratText(
                textAlign: TextAlign.center,
                fontSize: 14.63.sp,
                text:
                    "You are  about to delete your account. All your data will be permanently erased. Are you sure you want to continue?",
                maxLines: 4),
            SizedBox(height: 64.h),
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
                    text: "Delete",
                    onPressed: () {
                      Get.offAll(() => SignInScreen());
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
