import 'package:dine_hive/core/widgets/nav_items_widget.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTap;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItemWidget(
            icon: Icons.home,
            label: 'Home',
            isSelected: selectedIndex == 0,
            onTap: () => onItemTap(0),
          ),
          NavItemWidget(
            icon: Icons.person,
            label: 'Profile',
            isSelected: selectedIndex == 1,
            onTap: () => onItemTap(1),
          ),
          NavItemWidget(
            icon: Icons.shopping_cart,
            label: 'Cart',
            isSelected: selectedIndex == 2,
            badgeCount: 7,
            onTap: () => onItemTap(2),
          ),
          NavItemWidget(
            icon: Icons.chat_bubble,
            label: 'Messages',
            isSelected: selectedIndex == 3,
            showDot: true,
            onTap: () => onItemTap(3),
          ),
        ],
      ),
    );
  }
}
