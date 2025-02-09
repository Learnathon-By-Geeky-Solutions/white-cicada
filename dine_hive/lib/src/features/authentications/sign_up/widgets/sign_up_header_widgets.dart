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
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Image.asset(
            AppImages.appLogo,
            fit: BoxFit.contain,
            semanticLabel: 'Dine Hive Logo',
          ),
        ),
        Text(
          AppText.signUp,
          style: textTheme.headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
