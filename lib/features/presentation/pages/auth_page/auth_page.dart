import 'package:firebase/common/common.dart';
import 'package:firebase/features/presentation/pages/auth_page/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text(
          
          'Авторизация',
          style: TextStyle(color: AppColors.blackColor, fontFamily: 'Manrope', fontSize: 15.sp, fontWeight: FontWeight.w500, height: 20 / 15),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextFieldWidget(name: 'Логин или почта'),
          const DividerWidget(),
          const TextFieldWidget(name: 'Пароль'),
          SizedBox(
            height: 32.h,
          ),
          const ButtonWidget(name: 'Войти'),
          SizedBox(
            height: 16.h,
          ),
          const ButtonWidget(name: 'Зарегистрироваться'),
        ],
      ),
    );
  }
}
