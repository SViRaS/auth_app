import 'package:firebase/features/presentation/pages/auth_page/bloc/auth_bloc.dart';
import 'package:firebase/features/repositories/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/common.dart';
import 'router/routes.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocProvider(
          create: (context) => AuthBloc(AuthenticationRepository()),
          child: MaterialApp(
            initialRoute: '/',
            routes: routes,
          ),
        ),
    );
  }
}
