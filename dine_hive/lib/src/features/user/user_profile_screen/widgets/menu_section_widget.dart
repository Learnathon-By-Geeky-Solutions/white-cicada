import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/widgets/menu_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MenuSectionWidget extends StatelessWidget {
  const MenuSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: _buildMenuItems(context),
      ),
    );
  }

  List<Widget> _buildMenuItems(BuildContext context) {
    final verticalSpacing = Gap(AppSpacing.screenHeight(context) * 0.02);
    final items = [
      ('Present Bookings', Icons.event_available, 'present_bookings'),
      ('Booking History', Icons.schedule, 'booking_history'),
      ('My Coupons', Icons.confirmation_num_outlined, 'coupons'),
      ('Supports', Icons.headset_mic_outlined, 'supports'),
      ('Logout', Icons.logout, 'logout'),
    ];

    List<Widget> widgets = [
      const Divider(color: Colors.black, thickness: 1),
      verticalSpacing,
    ];

    for (int i = 0; i < items.length; i++) {
      final (title, icon, key) = items[i];
      widgets.add(
        MenuCardWidget(
          title: title,
          suffixIcon: icon,
          onTap: () => _handleMenuTap(key),
        ),
      );

      if (i == 2) {
        widgets.addAll([
          verticalSpacing,
          const Divider(color: Colors.black, thickness: 1),
        ]);
      }
      if (i != items.length - 1) {
        widgets.add(verticalSpacing);
      }
    }
    return widgets;
  }

  void _handleMenuTap(String key) {
    switch (key) {
      case 'present_bookings':
        break;
      case 'booking_history':
        break;
      case 'coupons':
        break;
      case 'supports':
        break;
      case 'logout':
        break;
    }
  }
}