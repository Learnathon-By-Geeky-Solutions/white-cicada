import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart' ;
import 'package:flutter/material.dart';

class EditUserProfileScreenAppBarWidget extends StatefulWidget {
  const EditUserProfileScreenAppBarWidget({super.key});

  @override
  State<EditUserProfileScreenAppBarWidget> createState() => _EditUserProfileScreenAppBarWidgetState();
}

class _EditUserProfileScreenAppBarWidgetState extends State<EditUserProfileScreenAppBarWidget> {
  void _onTapBackButton() {
    Navigator.pop(context);
  }

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
            AppText.editProfile,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.handyman,
              size: 26,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}

