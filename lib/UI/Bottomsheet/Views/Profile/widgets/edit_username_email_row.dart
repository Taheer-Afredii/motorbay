import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/profile_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/widgets/profile_textfield.dart';

class EditUserNameAndEmailRow extends StatelessWidget {
  const EditUserNameAndEmailRow({
    super.key,
    required this.model,
    required this.title,
    required this.imageIcon,
    required this.hintText,
    required this.isEnable,
    required this.controller,
    required this.onTap,
  });
  final ProfileViewmodel model;
  final String title;
  final String imageIcon;
  final String hintText;
  final bool isEnable;
  final TextEditingController controller;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imageIcon, height: 14.h, width: 14.w),
        SizedBox(width: 9.w),
        montserratText(
          text: title,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        ProfileTextField(
          controller: controller,
          hintText: hintText,
          isEnable: isEnable,
        ),
        const Spacer(),
        CircleContainer(
          height: 16.h,
          width: 16.w,
          color: primaryColor,
          onTap: onTap,
          child: Center(
            child: Image.asset(editIcon, height: 8.h, width: 6.4.w),
          ),
        ),
      ],
    );
  }
}

class EditPasswordRow extends StatelessWidget {
  const EditPasswordRow({
    super.key,
    required this.model,
    required this.title,
    required this.hintText,
    required this.isEnable,
    required this.controller,
    required this.onTap,
  });
  final ProfileViewmodel model;
  final String title;
  final String hintText;
  final bool isEnable;
  final TextEditingController controller;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        montserratText(
          text: title,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        Expanded(
          child: ProfilepasswordField(
            controller: controller,
            hintText: hintText,
            isEnable: isEnable,
          ),
        ),
        const Spacer(),
        CircleContainer(
          height: 16.h,
          width: 16.w,
          color: primaryColor,
          onTap: onTap,
          child: Center(
            child: Image.asset(editIcon, height: 8.h, width: 6.4.w),
          ),
        ),
      ],
    );
  }
}
