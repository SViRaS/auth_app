import 'package:firebase/common/common.dart';
import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        backgroundColor: AppColors.redColor,
        content: Center(
            child: Text(
          'Неверный логин или пароль!',
          style: AppStyles().errorStyle,
        )));
  }
}
