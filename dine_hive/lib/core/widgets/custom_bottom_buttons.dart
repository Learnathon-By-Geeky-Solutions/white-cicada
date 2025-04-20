import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/src/theme_extensions/color_palette.dart';

class CustomBottomButtons extends StatelessWidget {
  const CustomBottomButtons({
    super.key,
    required this.title,
    this.suffixIcon,
    this.prefixIcon,
    required this.onTappedAction,
    this.buttonColor,
  });

  final String title;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final VoidCallback onTappedAction;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        onTappedAction();
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: buttonColor??AppColors.textFiledFillColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                prefixIcon,
                color: AppColors.buttonFrontColor,
                size: 30,
              ),
              const Gap(5),
              Text(
                title,
                style:
                    textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
              ),
              const Gap(5),
              Icon(
                suffixIcon,
                color: buttonColor??AppColors.buttonFrontColor,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
