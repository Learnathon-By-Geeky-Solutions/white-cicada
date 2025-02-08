import 'package:flutter/material.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/texts.dart';

class LoginHeaderWidgets extends StatelessWidget {
  const LoginHeaderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Image.asset(AppImages.appLogo),
        Text(
          AppText.signIn,
          style: textTheme.headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
