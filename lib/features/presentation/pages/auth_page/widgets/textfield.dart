import 'package:flutter/material.dart';
import '../../../../../common/common.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String name;
   const TextFieldWidget({required this.name, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 16.w, top: 44.h),
        hintText: name,
        hintStyle: AppStyles().textFieldStyle,
        fillColor: AppColors.whiteColor,
        filled: true,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColor)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColor)),
            
      ),
    // validator: (value) {
    //   if(value!.isEmpty) {
    //     return 'Enter the Passowrd';
    //   } else if (passwordController.text.length < 6) {
    //     return 'Password Length Should not be less than 6 characters';
    //   }
    // },
    );
  }
}
