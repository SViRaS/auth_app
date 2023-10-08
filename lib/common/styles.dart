import 'package:flutter/material.dart';
import '../../../../../common/common.dart';

class AppStyles {
  final appBarStyle = TextStyle(
    fontSize: 15.sp,
    height: 20 / 15,
    fontFamily: 'Manrope',
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

  final textFieldStyle = TextStyle(
    fontSize: 16.sp,
    height: 21.86 / 16,
    fontFamily: 'Manrope',
    fontWeight: FontWeight.w400,
    color: AppColors.thinkGreyColor,
  );

  final buttonStyle = TextStyle(
    fontSize: 16.sp,
    height: 24 / 16,
    fontFamily: 'Manrope',
    fontWeight: FontWeight.w700,
    color: AppColors.cleanWhiteColor,
  );

  final profileNameStyle = TextStyle(
      fontSize: 24.sp,
      height: 40 / 24,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor);

  final profileEmailStyle = TextStyle(
      fontSize: 16.sp,
      height: 21.86 / 16,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      color: AppColors.lightGreyColor);

  final exitStyle = TextStyle(
      fontSize: 16.sp,
      height: 21.86 / 16,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      color: AppColors.redColor);

  final errorStyle = TextStyle(
      fontSize: 16.sp,
      height: 24 / 16,
      color: AppColors.whiteColor,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500);
}
