import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/theme/src/theme_extensions/color_palette.dart'
    as AppColors;

class CustomBottomButtons extends StatelessWidget {
  const CustomBottomButtons({
    super.key,
    required this.textTheme,
    required this.title,
    this.sIcon,
    this.pIcon,
  });

  final TextTheme textTheme;
  final String title;
  final IconData? sIcon;
  final IconData? pIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: const BoxDecoration(
          color: AppColors.textFiledFillColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                pIcon,
                color: AppColors.buttonFrontColor,
                size: 30,
              ),
              const Gap(5),
              Text(title, style: const TextStyle(color: AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w600),),
              const Gap(5),
              Icon(
                sIcon,
                color: AppColors.buttonFrontColor,
                size: 30,
              ),
            ],
          ),
        ),
    );
  }
}
