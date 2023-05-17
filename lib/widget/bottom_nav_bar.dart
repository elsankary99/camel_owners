import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key, required this.onTabChange});
  final Function(int) onTabChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        ///*onTap
        onTabChange: (value) => onTabChange(value),
        tabBorderRadius: 16,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
        tabActiveBorder: Border.all(color: Colors.grey[200]!),
        color: Colors.grey[500],
        activeColor: Colors.grey[800],
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'cart',
          ),
        ],
      ),
    );
  }
}
