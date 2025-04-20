import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pop(context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.45,
            child: Container(
              height: AppSpacing.screenHeight(context) * 0.06,
              width: AppSpacing.screenHeight(context) * 0.06,
              decoration: BoxDecoration(
                color: AppColors.buttonFrontColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(blurRadius: 3, color: Colors.grey)],
              ),
            ),
          ),
          const Center(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 26,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}