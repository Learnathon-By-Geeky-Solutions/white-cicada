import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        InkWell(
          onTap: ()=> context.go(AppRouteConstant.signInScreen),
          child: Text.rich(TextSpan(
              text: AppText.alreadyHaveAnAccount,
              style: textTheme.bodyMedium!,
              children: [
                TextSpan(
                    text: AppText.signIn,
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
                    style: textTheme.titleLarge!.copyWith(color: AppColors.whiteColor),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
