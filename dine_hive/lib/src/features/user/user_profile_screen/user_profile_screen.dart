import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:dine_hive/src/data/static_user_data.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/widgets/menu_card_widget.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/widgets/profile_app_bar_widget.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/widgets/user_profile_photo_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key, this.userId = 'user123'});

  final String userId;

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  UserModel? getUserById(String id) {
    return staticUser.userId == id ? staticUser : null;
  }

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onTapPresentBookings() {}
  void onTapBookingHistory() {}
  void onTapCoupons() {}
  void onTapSupports() {}
  void onTapLogOut() {}

  @override
  Widget build(BuildContext context) {
    UserModel? userModel = getUserById('user123');
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNav(
          selectedIndex: selectedIndex,
          onItemTap: _onItemTapped,
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileAppBarWidget(userModel: userModel,),
              UserProfilePhotoWidget(
                userModel: userModel,
              ),
              Gap(AppSpacing.screenHeight(context) * 0.02),
              _buildMenu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildDivider(),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          MenuCardWidget(
              title: "Present Bookings",
              suffixIcon: Icons.event_available,
              onTap: onTapPresentBookings),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          MenuCardWidget(
              title: "Booking History",
              suffixIcon: Icons.schedule,
              onTap: onTapBookingHistory),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          MenuCardWidget(
              title: "My Coupons",
              suffixIcon: Icons.confirmation_num_outlined,
              onTap: onTapCoupons),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          _buildDivider(),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          MenuCardWidget(
              title: "Supports",
              suffixIcon: Icons.headset_mic_outlined,
              onTap: onTapSupports),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          MenuCardWidget(
              title: "Logout", suffixIcon: Icons.logout, onTap: onTapLogOut),
        ],
      ),
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: Colors.black,
      thickness: 3,
    );
  }
}
