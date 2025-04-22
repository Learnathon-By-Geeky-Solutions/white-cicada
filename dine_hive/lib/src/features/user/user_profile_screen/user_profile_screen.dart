import 'package:dine_hive/src/features/user/user_profile_screen/widgets/menu_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/widgets/profile_app_bar_widget.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/widgets/user_profile_photo_widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileAppBarWidget(),
              const UserProfilePhotoWidget(),
              Gap(AppSpacing.screenHeight(context) * 0.02),
              const MenuSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
