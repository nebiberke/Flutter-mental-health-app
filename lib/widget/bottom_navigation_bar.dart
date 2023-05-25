import 'package:flutter/material.dart';
import 'package:mental_app/util/appcolors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: NavigationBar(
          backgroundColor: Colors.white,
          height: 70,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: AppColors.primaryBlue,
                size: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.window,
                color: Color(0xffCEDAF6),
                size: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.mail,
                color: Color(0xffCEDAF6),
                size: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(0xffCEDAF6),
                size: 30,
              ),
              label: '',
            ),
          ]),
    );
  }
}