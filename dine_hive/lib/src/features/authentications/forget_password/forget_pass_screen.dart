import 'widgets/forget_pass_form_widgets.dart';
import 'widgets/forget_pass_header_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constant/spacing.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.pagePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ForgetPassHeaderWidgets(),
            Gap(AppSpacing.screenHeight(context) * 0.05),
            const ForgetPassFormWidgets(),
          ],
        ),
      ),
    );
  }
}

