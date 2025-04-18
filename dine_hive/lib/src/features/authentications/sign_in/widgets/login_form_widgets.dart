import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class LoginFormWidgets extends StatelessWidget {
  const LoginFormWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email), hintText: AppText.emailAddress),
        ),
        Gap(AppSpacing.screenHeight(context) * 0.02),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: AppText.password,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                context.go(AppRouteConstant.forgotPasswordScreen);
              },
              child: const Text(
                AppText.forgotPassword,
                style: TextStyle(color: blackShadeColor),
              )),
        ),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
              onPressed: () {
                context.go(AppRouteConstant.parentScreen);
              },
              child: Text(
                AppText.signIn,
                style: textTheme.titleLarge!.copyWith(color: whiteColor),
              )),
        ),
      ],
    );
  }
}
