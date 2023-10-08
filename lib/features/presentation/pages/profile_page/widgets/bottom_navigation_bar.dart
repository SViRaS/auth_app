import 'package:firebase/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 3;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 10.sp,
        unselectedFontSize: 10.sp,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.blackColor,
        selectedItemColor: AppColors.purpleColor,
        showUnselectedLabels: true,
        selectedLabelStyle: AppStyles().selectedStyle,
        unselectedLabelStyle: AppStyles().unselectedStyle,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/svg/lenta.svg',
                width: 18.w,
                height: 18.h,
              ),
              label: 'Лента'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/svg/map.svg',
                width: 18.w,
                height: 18.h,
              ),
              label: 'Карта'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/svg/heart.svg',
                width: 18.w,
                height: 18.h,
              ),
              label: 'Избранные'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/svg/profile.svg',
                width: 18.w,
                height: 18.h,
              ),
              label: 'Профиль'),
        ]);
  }
}
