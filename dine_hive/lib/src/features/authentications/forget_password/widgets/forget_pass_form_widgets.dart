import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/services/firebase_service/auth_services.dart';
import 'package:dine_hive/core/utils/toast_messages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class ForgetPassFormWidgets extends StatelessWidget {
  const ForgetPassFormWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextEditingController emailController =TextEditingController();
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email), hintText: AppText.emailAddress),
        ),
        Gap(AppSpacing.screenHeight(context) * 0.03),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {context.go(AppRouteConstant.initialRoute);},
                  child: Text(
                    AppText.cancel,
                    style: textTheme.titleMedium!.copyWith(color: AppColors.redColor),
                  )
              ),
              ElevatedButton(
                  onPressed: () {
                    AuthService authService = AuthService();
                    authService.sendPasswordResetEmail(emailController.text.toString());
                    ToastService.showSnackbar(context, 'Check your email box to reset');
                  },
                  child: Row(
                    children: [
                      Text(
                        AppText.sendEmail,
                        style: textTheme.titleMedium!.copyWith(color: AppColors.whiteColor),
                      ),
                      Gap(AppSpacing.screenWidth(context) * 0.01),
                      const Icon(Icons.arrow_forward,
                        color: AppColors.whiteColor,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
