import 'widgets/sign_up_footer_widgets.dart';
import 'widgets/sign_up_form_widgets.dart';
import 'widgets/sign_up_header_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constant/spacing.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.pagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SignUpHeaderWidgets(),
              Gap(AppSpacing.screenHeight(context) * 0.05),
              const SignUpFormWidgets(),
              Gap(AppSpacing.screenHeight(context) * 0.01),
              const SignUpFooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

