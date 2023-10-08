import 'package:firebase/features/presentation/pages/profile_page/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/common.dart';

class ProfilePage extends StatelessWidget {
  final String? email;
  const ProfilePage({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Профиль',
          style: AppStyles().appBarStyle,
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 32.h,
        ),
        SvgPicture.asset('assets/images/svg/avatar.svg',
            width: 64.w, height: 64.h),
        SizedBox(
          height: 8.h,
        ),
        Text('Марипбек Чингиз', style: AppStyles().profileNameStyle),
        SizedBox(
          height: 8.h,
        ),
        Text(email!, style: AppStyles().profileEmailStyle),
        SizedBox(
          height: 24.h,
        ),
        Container(
          height: 55.h,
          color: AppColors.whiteColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('Выйти', style: AppStyles().exitStyle)),
              ),
            ],
          ),
        )
      ]),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
