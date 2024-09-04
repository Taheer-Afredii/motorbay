import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
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
    this.showSuffixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.maxLines,
    this.suffixHeight,
    this.suffixWidth,
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
  final bool? showSuffixIcon;
  final String? suffixIcon;
  final Color? suffixIconColor;
  final int? maxLines;
  final double? suffixHeight;
  final double? suffixWidth;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      // textAlign: TextAlign.center,s
      maxLines: maxLines,
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
        suffixIcon: showSuffixIcon ?? false
            ? Padding(
                padding: EdgeInsets.all(20.h),
                child: Image.asset(
                  suffixIcon ?? locationIcon,
                  color: suffixIconColor,
                  height: suffixHeight ?? 13.64.h,
                  width: suffixWidth ?? 10.w,
                ),
              )
            : null,
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
          borderRadius: BorderRadius.circular(radius ?? 5.51.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: textfieldborderColor,
          ),
          borderRadius: BorderRadius.circular(radius ?? 5.51.r),
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

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({
    super.key,
    required this.hintText,
    required this.controller,
    this.height,
    this.width,
    this.padding,
    this.hintColor,
    this.hintWeight,
    this.radius,
    this.prefixicon,
    this.isShowSuffixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.isObscureText,
    this.onSuffixIconTap,
    this.maxLines,
    this.suffixSize,
    this.validator,
  });

  final String hintText;
  final TextEditingController controller;
  final double? height;
  final double? width;
  final double? padding;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  final String? prefixicon;
  final bool? isShowSuffixIcon;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final bool? isObscureText;
  final VoidCallback? onSuffixIconTap;
  final int? maxLines;
  final double? suffixSize;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      // textAlign: TextAlign.center,s
      maxLines: maxLines ?? 1,
      obscureText: isObscureText ?? false,
      style: montserratTextStyle(
        color: hintColor ?? blackColor.withOpacity(0.5),
        fontSize: 14.sp,
        fontWeight: hintWeight ?? FontWeight.w500,
      ),
      decoration: InputDecoration(
        suffixIcon: isShowSuffixIcon ?? false
            ? Padding(
                padding: EdgeInsets.all(15.sp),
                child: GestureDetector(
                    onTap: onSuffixIconTap ?? () {},
                    child: Icon(
                      suffixIcon ?? Icons.keyboard_arrow_down_rounded,
                      color: suffixIconColor ?? const Color(0xFF828284),
                      size: suffixSize,
                    )),
              )
            : null,
        hintText: hintText,
        // suffixIcon: const SizedBox(),
        fillColor: whiteColor,
        filled: true,
        // contentPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.w),
        // isDense: true,

        hintStyle: montserratTextStyle(
          color: hintColor ?? blackColor.withOpacity(0.2),
          fontSize: 14.sp,
          fontWeight: hintWeight ?? FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFE6E6E6),
          ),
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFE6E6E6),
          ),
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFE6E6E6),
          ),
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFE6E6E6),
          ),
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
      ),
    );
  }
}
