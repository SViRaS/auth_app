import 'package:flutter/material.dart';
import '../../../../../common/common.dart';

class ButtonWidget extends StatelessWidget {
  final String name;
  const ButtonWidget({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 64.h,
        decoration: BoxDecoration(
            color: AppColors.purpleColor,
            borderRadius: BorderRadius.all(Radius.circular(6.r))),
        child: Center(
          child: Text(
            name,
            style: AppStyles().buttonStyle,
          ),
        ),
      ),
    );
  }
}
