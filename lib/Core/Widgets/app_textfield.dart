import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/UI/Auth/auth_provider.dart';
import 'package:provider/provider.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.label,
    this.labelColor,
    // this.height,
    // this.width,
    this.padding,
    this.hintColor,
    this.hintWeight,
    this.radius,
    this.prefixicon,
    this.validator,
  });

  final String hintText;
  final TextEditingController controller;
  // final double? height;
  // final double? width;
  final String label;
  final double? padding;
  final Color? labelColor;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  final String? prefixicon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      // textAlign: TextAlign.center,s
      // maxLines: 10 ,
      style: montserratTextStyle(
        color: hintColor ?? hintColor,
        fontSize: 14.sp,
        fontWeight: hintWeight ?? FontWeight.w500,
      ),

      decoration: InputDecoration(
        labelText: label,
        labelStyle: montserratTextStyle(
          color: blackColor,
          fontSize: 12.85.sp,
          fontWeight: hintWeight ?? FontWeight.w500,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        prefix: SizedBox(width: 3.w),
        // suffixIcon: const SizedBox(),
        fillColor: whiteColor,
        filled: true,
        // contentPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.w),
        // isDense: true,

        hintStyle: montserratTextStyle(
          color: hintColor ?? hintTextColor,
          fontSize: 12.85.sp,
          fontWeight: hintWeight ?? FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: textfieldborderColor,
          ),
          borderRadius: BorderRadius.circular(radius ?? 5.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: textfieldborderColor,
          ),
          borderRadius: BorderRadius.circular(radius ?? 5.r),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.label,
    this.labelColor,
    // this.height,
    // this.width,
    this.padding,
    this.hintColor,
    this.hintWeight,
    this.radius,
    this.prefixicon,
    this.validator,
  });

  final String hintText;
  final TextEditingController controller;
  // final double? height;
  // final double? width;
  final String label;
  final double? padding;
  final Color? labelColor;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  final String? prefixicon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, model, child) {
      return TextFormField(
        validator: validator,
        controller: controller,
        obscureText: !model.isPasswordVisible,
        // textAlign: TextAlign.center,s
        // maxLines: 10 ,
        style: montserratTextStyle(
          color: hintColor ?? hintColor,
          fontSize: 14.sp,
          fontWeight: hintWeight ?? FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: montserratTextStyle(
            color: blackColor,
            fontSize: 12.85.sp,
            fontWeight: hintWeight ?? FontWeight.w500,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          prefix: SizedBox(width: 3.w),
          // suffixIcon: const SizedBox(),
          fillColor: whiteColor,
          filled: true,
          // contentPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.w),
          // isDense: true,
          suffixIcon: GestureDetector(
            onTap: () {
              model.togglePasswordVisibility();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Icon(
                model.isPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: primaryColor,
              ),
            ),
          ),
          hintStyle: montserratTextStyle(
            color: hintColor ?? hintTextColor,
            fontSize: 14.sp,
            fontWeight: hintWeight ?? FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: textfieldborderColor,
            ),
            borderRadius: BorderRadius.circular(radius ?? 5.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: textfieldborderColor,
            ),
            borderRadius: BorderRadius.circular(radius ?? 5.r),
          ),
        ),
      );
    });
  }
}
