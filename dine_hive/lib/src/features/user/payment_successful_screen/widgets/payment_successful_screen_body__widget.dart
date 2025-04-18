import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentSuccessfulScreenBodyWidget extends StatelessWidget {
  const PaymentSuccessfulScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(AppText.paymentSuccessful,
              style: Theme.of(context).textTheme.headlineLarge!),
          const Gap(10),
          Text(AppText.thankYouForYourOrder,
              style: Theme.of(context).textTheme.titleMedium!),
          const Gap(100),
          Text(
              AppText.afterPaymentInstructions,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
