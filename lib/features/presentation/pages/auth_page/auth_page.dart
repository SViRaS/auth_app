import 'package:firebase/common/common.dart';
import 'package:firebase/features/presentation/pages/auth_page/bloc/auth_bloc.dart';
import 'package:firebase/features/presentation/pages/auth_page/widgets/widgets.dart';
import 'package:firebase/features/presentation/pages/profile_page/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repositories/authentication.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthBloc authBloc = AuthBloc(AuthenticationRepository());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String get _email => emailController.text;
  String get _password => passwordController.text;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthenticatedState) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage(email: _email)));
          } else if (state is UnauthenticatedState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: AppColors.redColor,
              content: Center(
                  child: Text(
                'Неверный логин или пароль!',
                style: AppStyles().errorStyle,
              )),
            ));
          }
        },
        child: Column(
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
                  BlocProvider.of<AuthBloc>(context)
                      .add(AuthPressedEvent(_email, _password));
                },
                child: const ButtonWidget(name: 'Войти')),
            SizedBox(
              height: 16.h,
            ),
            const ButtonWidget(name: 'Зарегистрироваться'),
          ],
        ),
      ),
    );
  }
}


// BlocBuilder<AuthBloc, AuthState>(
      //   bloc: authBloc,
      //   builder: (context, state) {
      //     if (state is AuthLoading) {
      //       return const Center(child: CircularProgressIndicator());
      //     } else if (state is AuthenticationState) {
      //       return  ProfilePage(email: _email);
      //     } else if (state is AuthFailure) {
      //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //         backgroundColor: AppColors.redColor,
      //         content: Center(
      //             child: Text(
      //           'Неверный логин или пароль!',
      //           style: AppStyles().errorStyle,
      //         )),
      //       ));
      //     }