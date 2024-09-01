import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motorbay/Constant/colors.dart';

Text montserratText(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? blackColor,
      fontSize: fontSize ?? 12.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text montserratText12(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? blackColor,
      fontSize: fontSize ?? 12.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text montserratText1285(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? blackColor,
      fontSize: fontSize ?? 12.85.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text montserratText14(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    TextOverflow? overflow,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: overflow ?? TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? blackColor,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text montserratText1465(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? blackColor,
      fontSize: fontSize ?? 14.65.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text montserrat16Text(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    TextOverflow? overflow,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: overflow ?? TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? textColor,
      fontSize: fontSize ?? 16.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text montserrat18Text(
    {required String text,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    TextOverflow? overflow,
    double? height,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign ?? TextAlign.start,
    overflow: overflow ?? TextOverflow.ellipsis,
    style: GoogleFonts.montserrat(
      height: height,
      color: color ?? textColor,
      fontSize: fontSize ?? 18.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

TextStyle montserratTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  double? height,
}) {
  return GoogleFonts.montserrat(
    color: color ?? blackColor,
    fontSize: fontSize ?? 14.sp,
    fontWeight: fontWeight ?? FontWeight.normal,
    height: height,
  );
}
