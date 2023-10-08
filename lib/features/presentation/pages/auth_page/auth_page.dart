import 'package:firebase/common/common.dart';
import 'package:firebase/features/presentation/pages/auth_page/widgets/widgets.dart';
import 'package:firebase/features/presentation/pages/profile_page/view.dart';
import 'package:flutter/material.dart';
import '../../../repositories/authentication.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

String get _email => emailController.text;
String get _password => passwordController.text;

@override
void dispose() {
  emailController.dispose();
  passwordController.dispose();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Авторизация',
          style: AppStyles().appBarStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldWidget(
            name: 'Логин или почта',
            controller: emailController,
          ),
          const DividerWidget(),
          TextFieldWidget(
            name: 'Пароль',
            controller: passwordController,
          ),
          SizedBox(
            height: 32.h,
          ),
          GestureDetector(
              onTap: () {
                AuthenticationRepository()
                    .auth(_email, _password)
                    .then((isAuthenticated) {
                  if (isAuthenticated == true) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(
                                email: _email,
                              )),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: AppColors.redColor,
                        content: Center(child: Text('Неверный логин или пароль', style: TextStyle(fontSize: 16.sp, height: 24 / 16, color: AppColors.whiteColor, fontFamily: 'Manrope', fontWeight: FontWeight.w500),))));
                  }
                });
              },
              child: const ButtonWidget(name: 'Войти')),
          SizedBox(
            height: 16.h,
          ),
          const ButtonWidget(name: 'Зарегистрироваться'),
        ],
      ),
    );
  }
}
