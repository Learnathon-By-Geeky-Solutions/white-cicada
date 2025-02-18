import 'package:dine_hive/core/constant/spacing.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/texts.dart';

class ForgetPassHeaderWidgets extends StatelessWidget {
  const ForgetPassHeaderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Image.asset(
            AppImages.forgetPassImage,
            fit: BoxFit.fill,
            semanticLabel: 'Forget pass image',
          ),
        ),
        Text(
          AppText.resetPass,
          style: textTheme.headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        Gap(AppSpacing.screenHeight(context) * 0.13),
        Text(
          textAlign: TextAlign.center,
          AppText.forgetPass,
          style: textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
