import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart'
    as AppColors;

class ProfileAppBarWidget extends StatefulWidget {
  const ProfileAppBarWidget({super.key, this.userModel});

  final UserModel? userModel;

  @override
  State<ProfileAppBarWidget> createState() => _ProfileAppBarWidgetState();
}

class _ProfileAppBarWidgetState extends State<ProfileAppBarWidget> {

  void _onTapBackButton() {}

  void _onTapSettings() {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.screenWidth(context),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: _onTapBackButton,
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 26,
              color: AppColors.blackColor,
            ),
          ),
          const Text(
            AppText.profile,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          IconButton(
            onPressed: _onTapSettings,
            icon: const Icon(
              Icons.settings,
              size: 26,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
