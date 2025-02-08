import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widgets.dart';
import 'widgets/login_header_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constant/spacing.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSpacing appSpacing = AppSpacing();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.pagePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LoginHeaderWidgets(),
            Gap(appSpacing.screenHeight(context) * 0.05),
            const LoginFormWidgets(),
            Gap(appSpacing.screenHeight(context) * 0.01),
            const LoginFooterWidget()
          ],
        ),
      ),
    );
  }
}
