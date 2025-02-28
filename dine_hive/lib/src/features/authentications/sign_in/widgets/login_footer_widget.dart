import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        InkWell(
          onTap: ()=> context.go('/signup'),
          child: Text.rich(TextSpan(
              text: AppText.newToDineHive,
              style: textTheme.bodyMedium!,
              children: [
                TextSpan(
                    text: AppText.signUp,
                    style: textTheme.bodyMedium!.copyWith(color: Colors.red))
              ])),
        ),
        Gap(AppSpacing.screenHeight(context) * 0.03),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.googleLogo),
                  Gap(AppSpacing.screenWidth(context) * 0.05),
                  Text(
                    AppText.continueWithGoogle,
                    style: textTheme.titleLarge!.copyWith(color: whiteColor),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
