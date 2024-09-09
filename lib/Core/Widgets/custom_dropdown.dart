import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class CustomDropDown2<T> extends StatelessWidget {
  const CustomDropDown2({
    super.key,
    required this.hinttext,
    this.value,
    required this.onChanged,
    required this.items,
    required this.itemBuilder,
  });

  final String hinttext;
  final T? value;
  final List<T> items;
  final Function(T?) onChanged;
  final Widget Function(T) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57.h,
      child: DropdownButtonFormField<T>(
        value: value,
        dropdownColor: whiteColor,
        style: montserratTextStyle(
            color: textColor, fontSize: 14.sp, fontWeight: FontWeight.normal),
        decoration: InputDecoration(
          labelText: "Select Service",
          labelStyle: montserratTextStyle(
            color: blackColor,
            fontSize: 12.85.sp,
            fontWeight: FontWeight.w500,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: textfieldborderColor,
            ),
            borderRadius: BorderRadius.circular(5.51.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: textfieldborderColor,
            ),
            borderRadius: BorderRadius.circular(5.51.r),
          ),
        ),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        hint: montserratText(
            text: hinttext,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: blackColor.withOpacity(0.2)),
        items: items.map((T value) {
          return DropdownMenuItem<T>(
            value: value,
            child: itemBuilder(value),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
