import 'package:dine_hive/core/widgets/nav_items_widget.dart';
import 'package:dine_hive/src/data/providers/parent_screen_provider.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ParentScreenProvider parentScreenProvider;
  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.parentScreenProvider,
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
            onTap: () => parentScreenProvider.setNavBarScreen(0),
          ),
          NavItemWidget(
            icon: Icons.person,
            label: 'Profile',
            isSelected: selectedIndex == 1,
            onTap: () => parentScreenProvider.setNavBarScreen(1),
          ),
          NavItemWidget(
            icon: Icons.shopping_cart,
            label: 'Cart',
            isSelected: selectedIndex == 2,
            badgeCount: 7,
            onTap: () => parentScreenProvider.setNavBarScreen(2),

    ),
          NavItemWidget(
            icon: Icons.qr_code_scanner_outlined,
            label: 'QR Scan',
            isSelected: selectedIndex == 3,
            showDot: false,
            onTap: () => parentScreenProvider.setNavBarScreen(3),
          ),
        ],
      ),
    );
  }
}
