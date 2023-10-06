import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/common.dart';

class TextFieldWidget extends StatelessWidget {
  final String name;
  const TextFieldWidget({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 16.w, top: 44.h),
        hintText: name,
        hintStyle: TextStyle(
          color: AppColors.thinkGreyColor,
          fontWeight: FontWeight.w400,
          fontFamily: 'Manrope',
          fontSize: 16.sp,
          height: 21.86 / 16,
        ),
        fillColor: AppColors.whiteColor,
        filled: true,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColor)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColor)),
      ),
    );
  }
}
