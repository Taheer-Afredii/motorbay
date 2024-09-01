import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
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
    this.isShowPrefixIcon,
    this.hintSize,
    this.suffixIconColor,
    this.onChanged,
    this.onprefixIconTap,
    this.onSuffixIconTap,
    this.prefixIconColor,
    this.prefixiconPadding,
    this.suffixiconPadding,
    this.suffixIconWidget,
  });

  final String hintText;
  final double? hintSize;
  final TextEditingController controller;
  final double? height;
  final double? width;
  final double? padding;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  // final String? prefixicon;
  final bool? isShowSuffixIcon;
  final IconData? suffixIcon;
  final bool? isShowPrefixIcon;
  final IconData? prefixicon;
  final Color? suffixIconColor;
  final void Function(String)? onChanged;
  final VoidCallback? onprefixIconTap;
  final VoidCallback? onSuffixIconTap;
  final Color? prefixIconColor;
  final EdgeInsets? prefixiconPadding;
  final EdgeInsets? suffixiconPadding;
  final Widget? suffixIconWidget;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      // textAlign: TextAlign.center,s
      // maxLines: 10 ,
      style: montserratTextStyle(
        color: hintColor ?? hintTextColor,
        fontSize: 14.sp,
        fontWeight: hintWeight ?? FontWeight.w500,
      ),
      decoration: InputDecoration(
        prefixIcon: isShowPrefixIcon ?? false
            ? GestureDetector(
                onTap: onprefixIconTap,
                child: Padding(
                  padding: prefixiconPadding ?? EdgeInsets.all(8.sp),
                  child: Icon(
                    prefixicon ?? Icons.keyboard_arrow_down_rounded,
                    color: prefixIconColor,
                  ),
                ),
              )
            : null,
        suffixIcon: isShowSuffixIcon ?? false
            ? GestureDetector(
                onTap: onSuffixIconTap,
                child: Padding(
                  padding: suffixiconPadding ?? EdgeInsets.all(15.sp),
                  child: suffixIconWidget ??
                      Icon(suffixIcon ?? Icons.keyboard_arrow_down_rounded,
                          color: suffixIconColor),
                ),
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
          fontSize: hintSize ?? 14.sp,
          fontWeight: hintWeight ?? FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
      ),
    );
  }
}
