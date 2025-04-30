import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/widgets/custom_app_bar.dart';
import 'package:dine_hive/core/widgets/custom_bottom_bar.dart';
import 'package:dine_hive/src/features/user/order_screen/widgets/payment_successful_animation_widget.dart';
import 'package:dine_hive/src/features/user/order_screen/widgets/payment_successful_screen_body__widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            const Positioned(
              child: Image(
                image: AssetImage(AppImages.BGPattern),
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
                child: Column(
                  children: [
                    Gap(AppSpacing.screenHeight(context) * 0.07),
                    const PaymentSuccessfulAnimationWidget(),
                    const Gap(20),
                    const PaymentSuccessfulScreenBodyWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
        CustomBottomBarWidget(textTheme: textTheme, title1: AppText.backToHome, title2: AppText.trackOrder, pIcon: Icons.home, sIcon: Icons.arrow_forward_ios_outlined),
      ],
    );
  }
}
