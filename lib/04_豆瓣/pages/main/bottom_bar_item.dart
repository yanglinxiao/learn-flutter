import 'package:flutter/material.dart';

class BottomBarItem extends BottomNavigationBarItem {
  BottomBarItem(String iconName, String title)
      : super(
            label: title,
            icon: Image.asset(
              "assets/images/tabbar/$iconName.png",
              width: 32,
            ),
            activeIcon: Image.asset(
              "assets/images/tabbar/${iconName}_active.png",
              width: 32,
            ));
}
