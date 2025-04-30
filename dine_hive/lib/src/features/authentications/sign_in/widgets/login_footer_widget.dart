import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/services/firebase_service/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../../core/utils/toast_messages.dart';
import '../../../../data/providers/user_provider.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        InkWell(
          onTap: ()=> context.push(AppRouteConstant.signupScreen),
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
              onPressed: () {
                AuthService authService = AuthService();
                authService.signInWithGoogle(context).onError((e, stackTrace) {
                  ToastService.showSnackbar(context, "Login failed: $e");
                });
              },
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
