import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/services/firebase_service/auth_services.dart';
import 'package:dine_hive/core/utils/toast_messages.dart';
import 'package:dine_hive/core/utils/utils.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:dine_hive/src/data/providers/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../core/constant/key.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class SignUpFormWidgets extends StatelessWidget {
  const SignUpFormWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Consumer<UserProvider>(builder: (context, userProvider, _) {
      return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: userProvider.nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your name';
                }

                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person), hintText: AppText.name),
            ),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: userProvider.emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: AppText.emailAddress),
            ),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            TextFormField(
              obscureText: true,
              controller: userProvider.passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password cannot be empty';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: AppText.password,
              ),
            ),
            Gap(AppSpacing.screenHeight(context) * 0.03),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      ///SignUp
                      AuthService authService = AuthService();
                      authService
                          .signUpWithEmail(
                              userProvider.emailController.text.toString(),
                              userProvider.passwordController.text.toString())
                          .then((onValue) {
                        ///Storing user data
                        Provider.of<UserProvider>(context, listen: false)
                            .saveUser()
                            .then((onValue) {
                          ///Navigate to parent Screen
                          context.go(AppRouteConstant.parentScreen);
                          ToastService.showSnackbar(context, "Successfully signup");
                        }).onError((e, stackTrace) {
                          ToastService.showSnackbar(context,
                              "Sign up successfully but failed to store user data. Error: $e");
                        });
                      }).onError((e, stackTrace) {
                        ToastService.showSnackbar(context, "Login failed: $e");
                      });
                    }
                  },
                  child: Text(
                    AppText.signUp,
                    style: textTheme.titleLarge!
                        .copyWith(color: AppColors.whiteColor),
                  )),
            ),
          ],
        ),
      );
    });
  }
}
