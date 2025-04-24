import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/services/firebase_service/auth_services.dart';
import 'package:dine_hive/core/utils/toast_messages.dart';
import 'package:dine_hive/src/data/providers/login_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../core/constant/key.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class LoginFormWidgets extends StatelessWidget {
  const LoginFormWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Consumer<LoginProvider>(builder: (_, loginProvider, __) {
      return Column(
        children: [
          Form(
            key: formKey,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: loginProvider.emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: AppText.emailAddress),
            ),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          TextFormField(
            controller: loginProvider.passwordController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: AppText.password,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  context.push(AppRouteConstant.forgotPasswordScreen);
                },
                child: const Text(
                  AppText.forgotPassword,
                  style: TextStyle(color: AppColors.blackShadeColor),
                )),
          ),
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
                onPressed: () {
                  AuthService authService = AuthService();

                  /// Login
                  authService
                      .signInWithEmail(
                          loginProvider.emailController.text.toString(),
                          loginProvider.passwordController.text.toString(),
                          context)
                      .then((action) {
                    ///Navigate to parent screen
                    ToastService.showSnackbar(context, 'Login Successful');
                  }).onError((error, stacktrace) {
                    ToastService.showSnackbar(context, error.toString());
                  });
                },
                child: Text(
                  AppText.signIn,
                  style: textTheme.titleLarge!
                      .copyWith(color: AppColors.whiteColor),
                )),
          ),
        ],
      );
    });
  }
}
