import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart' ;
import 'package:flutter/material.dart';

class EditUserProfileScreenAppBarWidget extends StatelessWidget {
  const EditUserProfileScreenAppBarWidget({super.key});

  void _onTapBackButton(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: AppSpacing.screenWidth(context),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () => _onTapBackButton(context),
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
          ],
        ),
      ),
    );
  }
}

