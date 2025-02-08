import 'package:flutter/material.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/texts.dart';

class SignUpHeaderWidgets extends StatelessWidget {
  const SignUpHeaderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Image.asset(AppImages.appLogo),
        Text(
          AppText.signUp,
          style: textTheme.headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
