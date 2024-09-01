import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class HomeSearchLocationDropdown extends StatelessWidget {
  const HomeSearchLocationDropdown({
    super.key,
    required this.hinttext,
    this.value,
    required this.onChanged,
  });
  final String hinttext;
  final String? value;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: DropdownButtonFormField<String>(
        style: montserratTextStyle(
            color: textColor, fontSize: 14.sp, fontWeight: FontWeight.normal),
        decoration: InputDecoration(
            prefixIcon: Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Image.asset(locationIcon,
                    height: 15.16.h,
                    width: 11.12.w,
                    color: const Color(0xFFFF6600))),
            prefixIconConstraints:
                BoxConstraints(minWidth: 0.w, minHeight: 0.h),
            suffixIconConstraints:
                BoxConstraints(minWidth: 0.w, minHeight: 0.h),
            border: InputBorder.none),
        icon: const SizedBox.shrink(),
        hint: montserratText(
          text: hinttext,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: const Color(0xFF666666),
        ),
        // alignment: Alignment. ,

        padding: EdgeInsets.zero,
        isExpanded: true,
        isDense: true,
        items: <String>[
          'Hatfield Pretoria',
          'Hatfield Pretoria',
          'Hatfield Pretoria'
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: montserratText(
                text: value,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: hintTextColor),
          );
        }).toList(),
        onChanged: (String? newValue) {
          // Handle change
        },
      ),
    );
  }
}
