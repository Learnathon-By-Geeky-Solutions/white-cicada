import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart'
    as AppColors;

class ProfileAppBarWidget extends StatefulWidget {
  const ProfileAppBarWidget({super.key, this.userModel});

  final UserModel? userModel;

  @override
  State<ProfileAppBarWidget> createState() => _ProfileAppBarWidgetState();
}

class _ProfileAppBarWidgetState extends State<ProfileAppBarWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.screenWidth(context),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              AppText.profile,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor,
              ),
            ),
            _buildPopupSettingMenuButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildPopupSettingMenuButton() {
    return Builder(
      builder: (outerContext) {
        return PopupMenuButton<String>(
          icon: const Icon(
            Icons.settings,
            size: 26,
            color: AppColors.blackColor,
          ),
          onSelected: (value) {
            Future.delayed(Duration.zero, () {
              switch (value) {
                case 'edit_profile':
                  outerContext.push(AppRouteConstant.editProfileScreen);
                  break;
                case 'password_security':
                  break;
                case 'notifications':
                  break;
                case 'dark_mode':
                  break;
                case 'about_us':
                  break;
              }
            });
          },
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          itemBuilder: (context) => [
            PopupMenuItem<String>(
              value: 'edit_profile',
              child: _buildSettingMenuItem(Icons.edit_outlined, "Edit Profile"),
            ),
            PopupMenuItem<String>(
              value: 'password_security',
              child: _buildSettingMenuItem(Icons.lock_outline, "Password and Security"),
            ),
            PopupMenuItem<String>(
              value: 'notifications',
              child: _buildSettingMenuItem(Icons.notifications_active_outlined, "Notifications"),
            ),
            PopupMenuItem<String>(
              value: 'dark_mode',
              child: _buildSettingMenuItem(Icons.dark_mode_outlined, "Dark Mode"),
            ),
            PopupMenuItem<String>(
              value: 'about_us',
              child: _buildSettingMenuItem(Icons.info_outline_rounded, "About Us"),
            ),
          ],
        );
      },
    );
  }


  Widget _buildSettingMenuItem(IconData icon, String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.blackColor),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
